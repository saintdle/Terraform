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

variable "num_cpu" {
  type        = "string"
  description = "This is the number of CPUs to be set for the deployed VM."
}

variable "memory" {
  type        = "string"
  description = "This is the memory in MB to be set for the deployed VM."
}

variable "vm_name" {
  type        = "string"
  description = "The base name of the virtual machine deployed."
}

variable "root_password" {
  type        = "string"
  description = "This is the password for the root account for the FAH appliance deployed."
}

variable "fah_user" {
  type = "string"
  description = "This is the FAH Username you wish to be associated with in the statistic tables"
}

variable "fah_team" {
  type        = "string"
  description = "The FAH Team ID you want to be associated with in the statistic tables"
}

variable "fah_passkey" {
  type        = "string"
  description = "The FAH passkey used to verify your account in the statistical tables (optional to use from FAH offering)"
}

variable "local_ovf_path" {
  type        = string
  description = "This is the complete local path with file name location of the OVA."
  default     = ""
}
variable "remote_ovf_url" {
  type        = string
  description = "This is the complete remote path with file name location of the OVA."
  default   = ""
}