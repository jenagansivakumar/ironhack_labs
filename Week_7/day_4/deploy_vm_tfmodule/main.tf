terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
  required_version = ">=1.1.0"
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg_demo" {
  name     = "jena-rg-mod-lab"
  location = "eastus"
  tags = {
    Environment = "Development"
    Owner       = "jena"
  }
}

resource "azurerm_virtual_network" "vnet" {
  name                = "vnet-mod-lab"
  location            = azurerm_resource_group.rg_demo.location
  resource_group_name = azurerm_resource_group.rg_demo.name
  address_space       = ["10.0.0.0/16"]
}

resource "azurerm_subnet" "subnet" {
  name                 = "subnet-mod-lab"
  resource_group_name  = azurerm_resource_group.rg_demo.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.1.0/24"]
}

resource "azurerm_network_interface" "nic" {
  name                = "nic-mod-lab"
  location            = azurerm_resource_group.rg_demo.location
  resource_group_name = azurerm_resource_group.rg_demo.name
  ip_configuration {
    name                          = "ipconfig1"
    subnet_id                     = azurerm_subnet.subnet.id
    private_ip_address_allocation = "Dynamic"
  }
}

module "linux_vm" {
  source         = "./tf-module-lab/modules/linux_vm"
  vm_name        = "vm-lab-jena"
  location       = azurerm_resource_group.rg_demo.location
  rg_name        = azurerm_resource_group.rg_demo.name
  vm_size        = "Standard_B1s"
  admin_username = "azureuser"
  admin_password = "P@ssw0rd123!"
  nic_id         = azurerm_network_interface.nic.id
}
