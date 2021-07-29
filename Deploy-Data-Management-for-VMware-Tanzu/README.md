# Data Management for VMware Tanzu

This Terraform script deploys the initial appliances needed to stand up the Data Management platform.

* [Product Documentation](https://docs.vmware.com/en/Data-Management-for-VMware-Tanzu/1.0/tanzu-data-management/GUID-index.html)

### Pre-Reqs

Download the following files from the [Tanzu Network Product Page](https://network.pivotal.io/products/data-management-tanzu/#/releases/856549)

* Agent Virtual Appliance
* Provider Virtual Appliance

Understand the networking requirements from the product documentation, you need a management network and a control plane network. A third network will be needed when you consume the platform deploying DB instances.

## Tested

Using VMware Cloud on AWS
Terraform Versions 0.13.0
Terraform vSphere Provider 1.25.0 + 2.0.2

## Known Issues

You will get warnings such as the below when running "terraform apply", because I didn't get around to fixing the syntax for the later versions of Terraform.

~~~

Warning: Interpolation-only expressions are deprecated

  on main.tf line 3, in provider "vsphere":
   3:   user                 = "${var.vsphere_user}"

Terraform 0.11 and earlier required all non-constant expressions to be
provided via interpolation syntax, but this pattern is now deprecated. To
silence this warning, remove the "${ sequence from the start and the }"
sequence from the end of this expression, leaving just the inner expression.

Template interpolation syntax is still used to construct strings from
expressions when the template includes multiple interpolation sequences or a
mixture of literal strings and interpolations. This deprecation applies only
to templates that consist entirely of a single interpolation sequence.

(and 133 more similar warnings elsewhere)


Warning: Quoted type constraints are deprecated

  on variables.tf line 6, in variable "vsphere_server":
   6:   type        = "string"

Terraform 0.11 and earlier required type constraints to be given in quotes,
but that form is now deprecated and will be removed in a future version of
Terraform. To silence this warning, remove the quotes around "string".

(and 35 more similar warnings elsewhere)

~~~
