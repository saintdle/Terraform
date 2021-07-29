data "vsphere_datastore" "datastore" {
  name          = "${var.datastore}"
  datacenter_id = "${var.datacenter_id}"
}

data "vsphere_network" "mgmt_network" {
  name          = "${var.provider_network}"
  datacenter_id = "${var.datacenter_id}"
}

data "vsphere_network" "control_plane_network" {
  name          = "${var.controlplane_network}"
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

  name             = "${var.name}"
  resource_pool_id = "${var.resource_pool_id}"
  datastore_id     = "${data.vsphere_datastore.datastore.id}"
  host_system_id   = "${data.vsphere_host.host.id}"
  local_ovf_path   = "${var.local_ovf_path}"
  ovf_network_map = {
    "Management Network": "${data.vsphere_network.mgmt_network.id}"
    "Control Plane Network": "${data.vsphere_network.control_plane_network.id}"
    }
  }

resource "vsphere_virtual_machine" "vm" {
  name             = "${var.name}"
  num_cpus         = 8
  memory           = 16384
  resource_pool_id = "${var.resource_pool_id}"
  datastore_id     = "${data.vsphere_datastore.datastore.id}"
  folder           = "${var.folder}"
  wait_for_guest_net_timeout = 0
  wait_for_guest_ip_timeout  = 0
  datacenter_id    = "${data.vsphere_datacenter.dc.id}"
  host_system_id   = "${data.vsphere_host.host.id}"

  dynamic "network_interface" {
    for_each = "${data.vsphere_ovf_vm_template.ovf.ovf_network_map}"
    content {
      network_id = network_interface.value
    }
  }

  ovf_deploy {
    ovf_network_map = "${data.vsphere_ovf_vm_template.ovf.ovf_network_map}"
    local_ovf_path = "${data.vsphere_ovf_vm_template.ovf.local_ovf_path}"
    disk_provisioning    = "thin"
   }

  vapp {
    properties = {
      "varoot_password" = "${var.varoot_password}",
      "guestinfo.cis.appliance.provider.first.name" = "${var.firstname}",
      "guestinfo.cis.appliance.provider.last.name" = "${var.lastname}",
      "guestinfo.cis.appliance.provider.company.name" = "${var.companyname}",
      "guestinfo.cis.appliance.provider.email" = "${var.email}",
      "guestinfo.cis.appliance.provider.password" = "${var.providerpassword}",
      "guestinfo.cis.appliance.net.ntp" = "${var.ntp}",
      "guestinfo.cis.appliance.rabbit.password" = "${var.rabbitpassword}",
      "guestinfo.cis.appliance.rabbit.gateway" = "${var.controlplanenetworkgateway}"
      "gateway" = "${var.providerip0defaultgateway}",
      "DNS" = "${var.dns}",
      "domain" = "${var.domain}",
      "searchpath" = "${var.searchpath}",
      "ip0" = "${var.providerip0}",
      "netmask0" = "${var.providerip0netmask}",
      "ip1" = "${var.providerip1}",
      "netmask1" = "${var.providerip1netmask}"
    }
  }
}