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

variable "ova_location" {
  type = "string"
}
