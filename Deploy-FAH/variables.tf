//////
// vSphere variables
//////

variable "vsphere_server" {
  type        = "string"
  description = "This is the vSphere server for the environment."
}

variable "vsphere_user" {
  type        = "string"
  description = "vSphere server user for the environment."
}

variable "vsphere_password" {
  type        = "string"
  description = "vSphere server password"
}

variable "vsphere_cluster" {
  type        = "string"
  description = "This is the name of the vSphere cluster."
}

variable "vsphere_datacenter" {
  type        = "string"
  description = "This is the name of the vSphere data center."
}

variable "vsphere_resource_pool" {
  type        = "string"
  description = "This is the name of the vSphere resource pool."
}

variable "vsphere_vm_folder" {
  type        = "string"
  description = "This is the name of the vSphere folder for VMs."
}

variable "vsphere_datastore" {
  type        = "string"
  description = "This is the name of the vSphere data store."
}

variable "instance_count" {
  type        = "string"
  description = "Set number of VMs to be deployed."
}

variable "vm_network" {
  type        = "string"
  description = "This is the name of the publicly accessible network for cluster ingress and access."
  default     = "VM Network"
}

variable "vsphere_host" {
  type        = "string"
  description = "This is the name of host to deploy the VM to in the cluster."
}

variable "ova_location" {
  type        = "string"
  description = "This is the complete path with file name location of the OVA."
}

