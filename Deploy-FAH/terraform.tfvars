// Name of the vSphere server. E.g "vcsa.vmware.local"
vsphere_server = "vcsa.vmware.local"

// User on the vSphere server. E.g "administrator@vsphere.local"
vsphere_user = "administrator@vsphere.local"

// Password of the user on the vSphere server. E.g "password"
vsphere_password = "VMware1!"

// Name of the vSphere data center. E.g "datacenter"
vsphere_datacenter = "SDDC-Datacenter"

// Name of the vSphere cluster. E.g "Cluster"
vsphere_cluster = "Lab-Cluster"

// Name or IP of the vSphere host in the cluster to deploy your VM to. E.g "esxi-01" or "192.168.1.20"
vsphere_host = "192.168.1.20"

// Name of the vSphere data store to use for the VMs. E.g "VSAN"
vsphere_datastore = "VMFS-DS001"

// Network to connect virtual machine
vm_network = "VLAN20"

// Number of instances to deploy
instance_count = 5

// VM Machine Name (an index will be appended i.e FAH-1, FAH-2,)
vm_name = "fah-"

// Number of CPUs to set on deployed Virtual Machines
num_cpus = 8

// Memory to set on deployed Virtual Machines (in MB)
memory = 4096

// Name of vSphere Resouce Pool to be created. E.g "FAH-VMs"
vsphere_resource_pool = "folding@home"

// Name of VM folder to be created. E.g "FAH-VMs"
vsphere_vm_folder = "folding@home"

// Location of OVA file if using a local location - if using remote location, leave this as null
local_ovf_path = "/home/ubuntu/Deploy-FAH/VMware-Appliance-FaH_1.0.4.ova"

// Location of OVA file if using a remote location - if using local location, leave this as null
remote_ovf_path = "https://veducate.co.uk/some.ova"

// Enable SSH in FAH Appliance (True or False)
ssh_enable = "True"

// FAH appliance root password
root_password = "VMware1!"

// FAH Username you wish to be associated with in the statistics tables
fah_user = "saintdle"

// FAH Team you wish to be associated with in the statistics tables
fah_team = "52737"

// FAH Passkey to verify your user in the statistical tables (this is optional from FAH project)
fah_passkey = "unique_id"