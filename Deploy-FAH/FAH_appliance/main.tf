data "vsphere_datastore" "datastore" {
  name          = "${var.datastore}"
  datacenter_id = "${var.datacenter_id}"
}

data "vsphere_network" "network" {
  name          = "${var.network}"
  datacenter_id = "${var.datacenter_id}"
}

data "vsphere_host" "host" {
  name 			= "${var.host}"
  datacenter_id = "${var.datacenter_id}"
}

data "vsphere_datacenter" "dc" {
  name = "${var.vsphere_datacenter}"
}

resource "vsphere_virtual_machine" "vm" {
  count			   = "${var.instance_count}"
  name             = "${var.name}${count.index}"
  resource_pool_id = "${var.resource_pool_id}"
  datastore_id     = "${var.datacenter_id}"
  num_cpus         = "${var.num_cpu}"
  memory           = "${var.memory}"
  folder           = "${var.folder}"
  wait_for_guest_net_timeout = 0
  wait_for_guest_ip_timeout  = 0
  datacenter_id    = "${data.vsphere_datacenter.dc.id}"
  host_system_id = "${data.vsphere_host.host.id}"

  dynamic "ovf_deploy" {
  for_each = "${var.local_ovf_path}" != "" || "${var.remote_ovf_path}" != "" ? [0] : []
  content {
  // Path to local or remote ovf/ova file
  local_ovf_path = "${var.local_ovf_path}" != "" ? "${var.local_ovf_path}" : null
  remote_ovf_url = "${var.remote_ovf_url}" != "" ? "${var.remote_ovf_url}" : null
   disk_provisioning    = "thin"
   ovf_network_map = {
        "VM Network" = data.vsphere_network.network.id
    }
   }
  }

  vapp {
    properties = {
      "guestinfo.hostname" = "${var.name}${count.index}",
      "guestinfo.enable_ssh" = "${var.ssh_enable}",
      "guestinfo.root_password" = "${var.root_password}",
      "guestinfo.fah_username" = "${var.fah_user}",
      "guestinfo.fah_team" = "${var.fah_team}",
      "guestinfo.fah_passkey" = "${var.fah_passkey}",
      "guestinfo.fah_mode" = "full"
    }
  }
}
