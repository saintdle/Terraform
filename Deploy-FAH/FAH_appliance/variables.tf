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

variable "network" {
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

variable "memory" {
  type = "string"
  default = 4096
}

variable "num_cpu" {
  type = "string"
}

variable "instance_count" {
  type = "string"
}

variable "ssh_enable" {
  type = "string"
}

variable "root_password" {
  type        = "string"
  default     = "VMware1!"
}

variable "fah_user" {
  type = "string"
}

variable "fah_team" {
  type        = "string"
  default     = "52737"
}

variable "fah_passkey" {
  type        = "string"
  default     = ""
}

variable "local_ovf_path" {
  type    = string
  default = ""
}
variable "remote_ovf_url" {
  type    = string
  default = ""
}