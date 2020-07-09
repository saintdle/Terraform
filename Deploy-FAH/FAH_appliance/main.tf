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
  name = "SDDC-Datacenter"
}

resource "vsphere_virtual_machine" "vm" {
  count			   = "${var.instance_count}"
  name             = "${var.name}${count.index}"
  resource_pool_id = "${var.resource_pool_id}"
  datastore_id     = "${data.vsphere_datastore.datastore.id}"
  num_cpus          = 16
  memory           = 4096
  folder           = "${var.folder}"
  wait_for_guest_net_timeout = 0
  wait_for_guest_ip_timeout  = 0
  datacenter_id    = "${data.vsphere_datacenter.dc.id}"
  host_system_id = "${data.vsphere_host.host.id}"

  ovf_deploy {
	// Path to local ovf/ova file
	local_ovf_path = "${var.ova_location}"
   disk_provisioning    = "thin"
   ovf_network_map = {
        "VM Network" = data.vsphere_network.network.id
  }
  }

  vapp {
    properties = {
      "guestinfo.hostname" = "fah-appliance.local",
      "guestinfo.enable_ssh" = "True",
      "guestinfo.root_password" = "VMware1!",
      "guestinfo.fah_username" = "saintdle",
      "guestinfo.fah_team" = "52737",
      "guestinfo.fah_passkey" = "8f52823030180d288f52823030180d28",
      "guestinfo.fah_mode" = "full"
    }
  }
}
