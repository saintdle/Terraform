//////
// vSphere variables
//////

// Name of the vSphere server. E.g "vcsa.vmware.local"
vsphere_server = "vc.local"

// User on the vSphere server. E.g "administrator@vsphere.local"
vsphere_user = "admin@veducate.local"

// Password of the user on the vSphere server. E.g "password"
vsphere_password = "Password1234!"

// Name of the vSphere data center. E.g "datacenter"
vsphere_datacenter = "Datacenter"

// Name of the vSphere cluster. E.g "Cluster"
vsphere_cluster = "Cluster"

// Name or IP of the vSphere host in the cluster to deploy your VM to. E.g "esxi-01" or "192.168.1.20"
vsphere_host = "10.0.0.10"

// Name of the vSphere data store to use for the VMs. E.g "VSAN"
vsphere_datastore = "Datastore"

// Name of vSphere Resouce Pool to be created. E.g "Tanzu-DMS-VMs"
vsphere_resource_pool = "dean-test"

// Name of VM folder to be created. E.g "Tanzu-DMS-VMs"
vsphere_vm_folder = "dean-test"


//////
// Provider VM variables
//////

// VM Machine Name (an index will be appended i.e Tanzu-DMS-1, Tanzu-DMS-2,)
provider_vm_name = "dean-test"

// Location of OVA file if using a local location - if using remote location, leave this as null
provider_local_ovf_path = "/home/ubuntu/XXXXXX"

// Location of OVA file if using a remote location - if using local location, leave this as null
provider_remote_ovf_path = ""

// Provider VM appliance root password
varoot_password = "VMware1!"

// Initial Administrative User of the DMS system
firstname = ""
lastname = ""
companyname = ""
email = ""

//
providerpassword = ""
rabbitpassword = ""

// Provider VM Management Network settings
dns = ""
domain = ""
searchpath = ""
ntp = ""

// The IP address + Subnet for the Provider VM on the Management Network
providerip0 = ""
providerip0netmask = ""
providerip0defaultgateway = ""

// Management Network to connect Provider VM
provider_vm_network = "VM_Network"

// The IP address + Subnet for the Provider VM on the Control Plane Network
providerip1 = ""
providerip1netmask = ""

// Control Plane Network to connect Provider VM and Gateway IP address
controlplane_network = ""
controlplanenetworkgateway = ""

//////
// Agent VM variables
//////

// VM Machine Name (an index will be appended i.e Tanzu-DMS-1, Tanzu-DMS-2,)
agent_vm_name = "dean-test"

// Location of OVA file if using a local location - if using remote location, leave this as null
agent_local_ovf_path = "/home/ubuntu/XXXXXX"

// Location of OVA file if using a remote location - if using local location, leave this as null
agent_remote_ovf_path = ""

// The password for the admin user on the Agent VM.
va_admin_password = ""

// The IP address + Subnet for the Agent VM on the Control Plane Network
agentip0 = ""
agentip0netmask = ""