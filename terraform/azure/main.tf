provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "AzureMultiCloudRG"
  location = var.location
}

resource "azurerm_virtual_network" "vnet" {
  name                = "Azure-VNet"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  address_space       = [var.vnet_cidr]
}

