provider "vsphere" {
  user                 = "${var.vsphere_user}"
  password             = "${var.vsphere_password}"
  vsphere_server       = "${var.vsphere_server}"
  allow_unverified_ssl = true
}

data "vsphere_datacenter" "dc" {
  name = "${var.vsphere_datacenter}"
}

module "folder" {
  source = "./folder"

  path          = "${var.vsphere_vm_folder}"
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}

module "resource_pool" {
  source = "./resource_pool"

  name            = "${var.vsphere_resource_pool}"
  datacenter_id   = "${data.vsphere_datacenter.dc.id}"
  vsphere_cluster = "${var.vsphere_cluster}"
}

module "fah_appliance" {
  source = "./FAH_appliance"

  name             = "${var.vm_name}"
  instance_count   = "${var.instance_count}"
  resource_pool_id = "${module.resource_pool.pool_id}"
  folder           = "${module.folder.path}"
  datastore        = "${var.vsphere_datastore}"
  network          = "${var.vm_network}"
  datacenter_id    = "${data.vsphere_datacenter.dc.id}"
  vsphere_datacenter = "${var.vsphere_datacenter}"
  host			       = "${var.vsphere_host}"
  memory           = "${var.memory}"
  num_cpu          = "${var.num_cpu}"
  local_ovf_path   = "${var.local_ovf_path}"
  remote_ovf_path  = "${var.remote_ovf_path}"
  ssh_enable       = "${var.ssh_enable}"
  root_password    = "${var.root_password}"
  fah_user         = "${var.fah_user}"
  fah_team         = "${var.fah_team}"
}
