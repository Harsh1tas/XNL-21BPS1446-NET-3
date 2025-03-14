provider "azurerm" {
  features {}
}

# Create Azure Virtual Network
resource "azurerm_virtual_network" "main_vnet" {
  name                = "Azure-Main-VNet"
  location            = var.azure_region
  resource_group_name = var.azure_resource_group
  address_space       = [var.azure_vnet_cidr]

  tags = {
    environment = "Production"
  }
}

# Create Azure Subnet
resource "azurerm_subnet" "subnet" {
  name                 = "Azure-Public-Subnet"
  resource_group_name  = var.azure_resource_group
  virtual_network_name = azurerm_virtual_network.main_vnet.name
  address_prefixes     = [var.azure_subnet_cidr]
}

# Create Public IP for Azure Gateway
resource "azurerm_public_ip" "public_ip" {
  name                = "Azure-Gateway-PublicIP"
  location            = var.azure_region
  resource_group_name = var.azure_resource_group
  allocation_method   = "Static"
}

# Create Azure Route Table
resource "azurerm_route_table" "rt" {
  name                = "Azure-RouteTable"
  location            = var.azure_region
  resource_group_name = var.azure_resource_group
}

