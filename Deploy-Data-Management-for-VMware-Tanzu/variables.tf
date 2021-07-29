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

//////
// Provider VM variables
//////


variable "provider_vm_network" {
  type        = "string"
  description = "Select the network for UI/API traffic (eth0)."
  default     = "VM Network"
}

variable "vsphere_host" {
  type        = "string"
  description = "This is the name of host to deploy the VM to in the cluster."
}

variable "provider_vm_name" {
  type        = "string"
  description = "The Provider VM name of the virtual machine deployed."
}

variable "varoot_password" {
  type        = "string"
  description = "This is the password for the root account for the FAH appliance deployed."
}

variable "provider_local_ovf_path" {
  type        = string
  description = "This is the complete local path with file name location of the Provider VM OVA."
  default     = ""
}
variable "provider_remote_ovf_path" {
  type        = string
  description = "This is the complete remote path with file name location of the Provider VM OVA."
  default   = ""
}
variable "firstname" {
  type        = string
  description = "The first name of the Provider Administrator user."
  default   = ""
}

variable "lastname" {
  type        = string
  description = "The last name of the Provider Administrator user."
  default   = ""
}

variable "email" {
  type        = string
  description = "The email of the Provider Administrator user."
  default   = ""
}

variable "companyname" {
  type        = string
  description = "The company name of the Provider Administrator user."
  default   = ""
}

variable "providerpassword" {
  type        = string
  description = "The password for the user. This is the user's login password in the Data Management for VMware Tanzu console."
  default   = ""
}

variable "rabbitpassword" {
  type        = string
  description = "The password for the RabbitMQ server admin user."
  default   = ""
}

variable "dns" {
  type        = string
  description = "DNS for Management Network used by Provider VM"
  default   = ""
}

variable "domain" {
  type        = string
  description = "Domain for Management Network used by Provider VM"
  default   = ""
}

variable "searchpath" {
  type        = string
  description = "Search Path for Management Network used by Provider VM"
  default   = ""
}

variable "ntp" {
  type        = string
  description = "NTP for Management Network used by Provider VM"
  default   = ""
}

variable "providerip0" {
  type        = string
  description = "The IP address for the Provider VM on the Management Network."
  default   = ""
}

variable "providerip0netmask" {
  type        = string
  description = "The subnet address for the Provider VM on the Management Network."
  default   = ""
}

variable "providerip1" {
  type        = string
  description = "The IP address for the Provider VM on the Control Plane Network."
  default   = ""
}

variable "providerip1netmask" {
  type        = string
  description = "The subnet address for the Provider VM on the Control Plane Network."
  default   = ""
}

variable "controlplane_network" {
  type        = string
  description = "Select the network for RabbitMQ traffic (eth1)."
  default   = ""
}

variable "controlplanenetworkgateway" {
  type        = string
  description = "The default gateway for the Control Plane Network."
  default   = ""
}

variable "providerip0defaultgateway" {
  type        = string
  description = "The subnet address for the Agent VM on the Control Plane Network."
  default   = ""
}

//////
// Agent VM variables
//////

variable "agent_vm_name" {
  type        = "string"
  description = "The Agent VM name of the virtual machine deployed."
}

variable "agent_local_ovf_path" {
  type        = string
  description = "This is the complete local path with file name location of the agent VM OVA."
  default     = ""
}

variable "agent_remote_ovf_path" {
  type        = string
  description = "This is the complete remote path with file name location of the agent VM OVA."
  default   = ""
}

variable "va_admin_password" {
  type        = string
  description = "The password for the admin user on the Agent VM."
  default   = ""
}

variable "agentip0" {
  type        = string
  description = "The IP address for the Agent VM on the Control Plane Network."
  default   = ""
}

variable "agentip0netmask" {
  type        = string
  description = "The subnet address for the Agent VM on the Control Plane Network."
  default   = ""
}