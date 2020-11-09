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

// Network to connect virtual machine
vm_network = "VM_Network"

// Number of instances to deploy
instance_count = 2

// VM Machine Name (an index will be appended i.e FAH-1, FAH-2,)
vm_name = "dean-test"

// Number of CPUs to set on deployed Virtual Machines
num_cpu = 2

// Memory to set on deployed Virtual Machines (in MB)
memory = 4096

// Name of vSphere Resouce Pool to be created. E.g "FAH-VMs"
vsphere_resource_pool = "dean-test"

// Name of VM folder to be created. E.g "FAH-VMs"
vsphere_vm_folder = "dean-test"

// Location of OVA file if using a local location - if using remote location, leave this as null
local_ovf_path = "/home/ubuntu/Deploy-FAH/VMware-Appliance-FaH_1.0.4.ova"

// Location of OVA file if using a remote location - if using local location, leave this as null
remote_ovf_path = ""

// Enable SSH in FAH Appliance (True or False)
ssh_enable = "True"

// FAH appliance root password
root_password = "VMware1!"

// FAH Username you wish to be associated with in the statistics tables
fah_user = ""

// FAH Team you wish to be associated with in the statistics tables
fah_team = "52737"

// FAH Passkey to verify your user in the statistical tables (this is optional from FAH project)
fah_passkey = "unique_id"
