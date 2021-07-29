data "vsphere_datastore" "datastore" {
  name          = "${var.datastore}"
  datacenter_id = "${var.datacenter_id}"
}

data "vsphere_network" "network" {
  name          = "${var.agent_network}"
  datacenter_id = "${var.datacenter_id}"
}

data "vsphere_host" "host" {
  name 			= "${var.host}"
  datacenter_id = "${var.datacenter_id}"
}

data "vsphere_datacenter" "dc" {
  name = "${var.vsphere_datacenter}"
}

data "vsphere_ovf_vm_template" "ovf" {
  name             = "${var.agent_vm_name}"
  resource_pool_id = "${var.resource_pool_id}"
  datastore_id     = "${data.vsphere_datastore.datastore.id}"
  host_system_id   = "${data.vsphere_host.host.id}"
  local_ovf_path   = "${var.agent_local_ovf_path}"
  ovf_network_map = {
    "Control Plane Network": "${data.vsphere_network.network.id}"
    }
  }

resource "vsphere_virtual_machine" "vm" {
  name             = "${var.agent_vm_name}"
  num_cpus         = 8
  memory           = 16384
  resource_pool_id = "${var.resource_pool_id}"
  datastore_id     = "${data.vsphere_datastore.datastore.id}"
  folder           = "${var.folder}"
  wait_for_guest_net_timeout = 0
  wait_for_guest_ip_timeout  = 0
  datacenter_id    = "${data.vsphere_datacenter.dc.id}"
  host_system_id = "${data.vsphere_host.host.id}"

  dynamic "network_interface" {
    for_each = "${data.vsphere_ovf_vm_template.ovf.ovf_network_map}"
    content {
      network_id = network_interface.value
    }
  }

  ovf_deploy {
   local_ovf_path = "${var.agent_local_ovf_path}"
   disk_provisioning    = "thin"
   ovf_network_map = "${data.vsphere_ovf_vm_template.ovf.ovf_network_map}"
   }

  vapp {
    properties = {
      "varoot_password" = "${var.varoot_password}",
      "vaadmin_password" = "${var.va_admin_password}",
      "guestinfo.cis.appliance.net.ntp" = "${var.ntp}",
      "gateway" = "${var.controlplanenetworkgateway}",
      "DNS" = "${var.dns}",
      "domain" = "${var.domain}",
      "searchpath" = "${var.searchpath}",
      "ip0" = "${var.agentip0}",
      "netmask0" = "${var.agentip0netmask}"
    }
  }
}