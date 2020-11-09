#  Description
Terraform files for deploying VMware Folding@Home appliance to your vSphere environment.
Currently configured for deployment to a network with DHCP.

# Update - 8th Nov 2020
Currently the latest files have been updated to handle more variables and different OVF deployment options (local/remote). 

#  Usage
Edit the terraform.tfvars file with your vSphere details and OVA location (only set value for either local or remote) and settings. 

#  Tested
Tested with VMware Cloud on AWS and Terraform v0.13.5, vSphere provider 1.23.0

#  Known issues
vSphere provider 1.24.0 and higher gives and error as stated here; https://github.com/hashicorp/terraform-provider-vsphere/issues/1257
This seems to be an issue in the provider itself, rather than the code. 

#  Resources
* VMware Folding@Home Appliance: https://flings.vmware.com/vmware-appliance-for-folding-home/
* Folding@Home Passkey: https://foldingathome.org/support/faq/points/passkey/
* Personal blog: https://veducate.co.uk
