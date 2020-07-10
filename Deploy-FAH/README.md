#  Description
Terraform files for deploying VMware Folding@Home appliance to your vSphere environment.
Currently configured for deployment to a network with DHCP.

#  Usage
Edit the terraform.tfvars file with your vSphere details and OVA location

Edit the main.tf file in the fah_appliance module folder
* Set the datacenter name
* Set your F@H username and passkey 
* Change CPU and Memory as needed.

#  Tested
Tested with VMware Cloud on AWS and Terraform 0.12.18, vSphere provider 1.21

#  Known issues
* Memory does not set correctly, sticks to 1GB as per OVA appliance
* * [Github Issue logged](https://github.com/hashicorp/terraform-provider-vsphere/issues/1130)
* Specifying the datacenter name in the fah_module as a variable from the terraform.tfvars file provides an error 

#  Resources
* VMware Folding@Home Appliance: https://flings.vmware.com/vmware-appliance-for-folding-home/
* Folding@Home Passkey: https://foldingathome.org/support/faq/points/passkey/
* Personal blog: https://veducate.co.uk
