terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
}

# Create a Resource Group
resource "azurerm_resource_group" "rg_demo" {
  name     = "rg-tf-lab"
  location = "eastus"
}

# Create a Virtual Network + Subnet
resource "azurerm_virtual_network" "vnet_demo" {
  name                = "vnet-tf-lab"
  location            = azurerm_resource_group.rg_demo.location
  resource_group_name = azurerm_resource_group.rg_demo.name
  address_space       = ["10.0.0.0/16"]
}

resource "azurerm_subnet" "subnet_demo" {
  name                 = "subnet-tf-lab"
  resource_group_name  = azurerm_resource_group.rg_demo.name
  virtual_network_name = azurerm_virtual_network.vnet_demo.name
  address_prefixes     = ["10.0.1.0/24"]
}

# Create a Network Interface
resource "azurerm_network_interface" "nic_demo" {
  name                = "nic-tf-lab"
  location            = azurerm_resource_group.rg_demo.location
  resource_group_name = azurerm_resource_group.rg_demo.name

  ip_configuration {
    name                          = "ipconfig1"
    subnet_id                     = azurerm_subnet.subnet_demo.id
    private_ip_address_allocation = "Dynamic"
  }
}

# Create a Linux Virtual Machine
resource "azurerm_linux_virtual_machine" "vm_demo" {
  name                = "vm-tf-lab"
  location            = azurerm_resource_group.rg_demo.location
  resource_group_name = azurerm_resource_group.rg_demo.name
  size                = "Standard_B1s"
  admin_username      = "azureuser"
  admin_password      = "P@ssw0rd1234!"  # Demo only

  network_interface_ids = [azurerm_network_interface.nic_demo.id]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }
}
