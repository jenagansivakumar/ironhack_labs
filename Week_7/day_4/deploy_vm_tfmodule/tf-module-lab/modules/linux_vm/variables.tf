variable "vm_name" {}
variable "location" {}
variable "rg_name" {}
variable "vm_size" { default = "Standard_B1s" }
variable "admin_username" {}
variable "admin_password" { sensitive = true }
variable "nic_id" {}
