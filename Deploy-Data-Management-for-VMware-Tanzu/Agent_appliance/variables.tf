variable "agent_vm_name" {
  type = "string"
}

variable "resource_pool_id" {
  type = "string"
}

variable "folder" {
  type = "string"
}

variable "datastore" {
  type = "string"
}

variable "agent_network" {
  type = "string"
}

variable "datacenter_id" {
  type = "string"
}

variable "vsphere_datacenter" {
  type = "string"
}

variable "host" {
  type = "string"
}

variable "varoot_password" {
  type        = "string"
  default     = "VMware1!"
}

variable "agent_local_ovf_path" {
  type    = string
  default = ""
}

variable "agent_remote_ovf_path" {
  type    = string
  default = ""
}


variable "va_admin_password" {
  type    = string
  default = ""
}

variable "ntp" {
  type    = string
  default = ""
}

variable "controlplanenetworkgateway" {
  type    = string
  default = ""
}

variable "dns" {
  type    = string
  default = ""
}

variable "domain" {
  type    = string
  default = ""
}

variable "searchpath" {
  type    = string
  default = ""
}

variable "agentip0" {
  type    = string
  default = ""
}

variable "agentip0netmask" {
  type    = string
  default = ""
}
