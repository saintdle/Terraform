variable "name" {
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

variable "provider_network" {
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

variable "local_ovf_path" {
  type    = string
  default = ""
}
variable "remote_ovf_path" {
  type    = string
  default = ""
}

variable "companyname" {
  type    = string
  default = ""
}

variable "firstname" {
  type    = string
  default = ""
}

variable "lastname" {
  type    = string
  default = ""
}

variable "email" {
  type    = string
  default = ""
}

variable "providerpassword" {
  type    = string
  default = ""
}

variable "rabbitpassword" {
  type    = string
  default = ""
}

variable "controlplane_network" {
  type    = string
  default = ""
}

variable "controlplanenetworkgateway" {
  type    = string
  default = ""
}

variable "ntp" {
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

variable "providerip0" {
  type    = string
  default = ""
}
variable "providerip0netmask" {
  type    = string
  default = ""
}

variable "providerip1" {
  type    = string
  default = ""
}

variable "providerip1netmask" {
  type    = string
  default = ""
}

variable "providerip0defaultgateway" {
  type    = string
  default = ""
}