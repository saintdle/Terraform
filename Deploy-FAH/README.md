#  Description
Terraform files for deploying VMware Folding@Home appliance to your vSphere environment. 

#  Usage
Edit the variables.tf file
Edit the main.tf file in the fah_appliance module folder, set your F@H username and passkey. Change CPU and Memory as needed.

#  Tested
Tested with VMware Cloud on AWS and Terraform 0.12.18

#  Known issues
Memory does not set correctly, sticks to 1GB as per OVA appliance

#  Resources
* VMware Folding@Home Appliance: https://flings.vmware.com/vmware-appliance-for-folding-home/bugs/972
* Folding@Home Passkey: https://foldingathome.org/support/faq/points/passkey/
* Personal blog: https://veducate.co.uk
