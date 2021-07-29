provider "vsphere" {
  version              = "2.0.2"
  user                 = "${var.vsphere_user}"
  password             = "${var.vsphere_password}"
  vsphere_server       = "${var.vsphere_server}"
  allow_unverified_ssl = true
}

data "vsphere_datacenter" "dc" {
  name = "${var.vsphere_datacenter}"
}

module "folder" {
  source = "./vSphere_folder"

  path          = "${var.vsphere_vm_folder}"
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}

module "resource_pool" {
  source = "./resource_pool"

  name            = "${var.vsphere_resource_pool}"
  datacenter_id   = "${data.vsphere_datacenter.dc.id}"
  vsphere_cluster = "${var.vsphere_cluster}"
}

module "Provider_appliance" {
  source = "./Provider_appliance"

  name             = "${var.provider_vm_name}"
  resource_pool_id = "${module.resource_pool.pool_id}"
  folder           = "${module.folder.path}"
  datastore        = "${var.vsphere_datastore}"
  provider_network = "${var.provider_vm_network}"
  datacenter_id    = "${data.vsphere_datacenter.dc.id}"
  vsphere_datacenter = "${var.vsphere_datacenter}"
  host			       = "${var.vsphere_host}"
  local_ovf_path   = "${var.provider_local_ovf_path}"
  remote_ovf_path  = "${var.provider_remote_ovf_path}"
  varoot_password  = "${var.varoot_password}"
  firstname        = "${var.firstname}"
  lastname         = "${var.lastname}"
  companyname      = "${var.companyname}"
  email            = "${var.email}"
  providerpassword = "${var.providerpassword}"
  ntp              = "${var.ntp}"
  rabbitpassword   = "${var.rabbitpassword}"
  controlplanenetworkgateway = "${var.controlplanenetworkgateway}"
  dns              = "${var.dns}"
  domain           = "${var.domain}"
  searchpath       = "${var.searchpath}"
  providerip0      = "${var.providerip0}"
  providerip0netmask = "${var.providerip0netmask}"
  providerip0defaultgateway = "${var.providerip0defaultgateway}"
  providerip1      = "${var.providerip1}"
  providerip1netmask = "${var.providerip1netmask}"
  controlplane_network = "${var.controlplane_network}"
}

module "Agent_appliance" {
  source = "./Agent_appliance"

  agent_vm_name    = "${var.agent_vm_name}"
  resource_pool_id = "${module.resource_pool.pool_id}"
  folder           = "${module.folder.path}"
  datastore        = "${var.vsphere_datastore}"
  agent_network    = "${var.controlplane_network}"
  datacenter_id    = "${data.vsphere_datacenter.dc.id}"
  vsphere_datacenter = "${var.vsphere_datacenter}"
  host			       = "${var.vsphere_host}"
  agent_local_ovf_path   = "${var.agent_local_ovf_path}"
  agent_remote_ovf_path  = "${var.agent_remote_ovf_path}"
  varoot_password  = "${var.varoot_password}"
  va_admin_password  = "${var.va_admin_password}"
  ntp              = "${var.ntp}"
  controlplanenetworkgateway = "${var.controlplanenetworkgateway}"
  dns              = "${var.dns}"
  domain           = "${var.domain}"
  searchpath       = "${var.searchpath}"
  agentip0         = "${var.agentip0}"
  agentip0netmask = "${var.agentip0netmask}"
}