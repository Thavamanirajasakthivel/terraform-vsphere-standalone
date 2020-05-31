#====================#
# vCenter connection #
#====================#

variable "vsphere_user" {
  description = "vSphere user name"
}

variable "vsphere_password" {
  description = "vSphere password"
}

variable "vsphere_vcenter" {
  description = "vCenter server FQDN or IP"
}

variable "vsphere_unverified_ssl" {
  description = "Is the vCenter using a self signed certificate (true/false)"
  default = "true"
}

variable "vsphere_datacenter" {
  description = "vSphere datacenter"
  default = "Datacenter1"
}

variable "vsphere_cluster" {
  description = "vSphere cluster"
  default     = "Cluster1"
}

#=========================#
# vSphere virtual machine #
#=========================#

variable "vm_datastore" {
  description = "Datastore used for the vSphere virtual machines"
  default = "3PAR_A64G-10TB-C3-01"
}

variable "vm_network" {
  description = "Network used for the vSphere virtual machines"
  default = "vxw-dvs-693-virtualwire-5-sid-5001-Green-Net"
}

variable "vm_template" {
  description = "Template used to create the vSphere virtual machines"
  default = "eshopterraform"
}

variable "vm_linked_clone" {
  description = "Use linked clone to create the vSphere virtual machine from the template (true/false). If you would like to use the linked clone feature, your template need to have one and only one snapshot"
  default = "false"
}

variable "vm_ip" {
  description = "Ip used for the vSpgere virtual machine"
  default = "172.16.20.113"
}

variable "vm_netmask" {
  description = "Netmask used for the vSphere virtual machine (example: 24)"
  default = "24"
}

variable "vm_gateway" {
  description = "Gateway for the vSphere virtual machine"
  default = "172.16.20.1"
}

variable "vm_dns" {
  description = "DNS for the vSphere virtual machine"
  default = "8.8.8.8"
}

variable "vm_domain" {
  description = "Domain for the vSphere virtual machine"
}

variable "vm_name" {
  description = "The name of the vSphere virtual machines and the hostname of the machine"
  default = "terraform_test"
}

