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

// Name of vSphere Resouce to be created. E.g "FAH-VMs"
vsphere_resource_pool = "folding@home"

// Name of VM folder to be created. E.g "FAH-VMs"
vsphere_vm_folder = "folding@home"

//Location of OVA file - Change Deploy-FAH/FAH_appliance/main.tf to use remote OVA instead. 
ova_location = "/home/ubuntu/Deploy-FAH/VMware-Appliance-FaH_1.0.4.ova"