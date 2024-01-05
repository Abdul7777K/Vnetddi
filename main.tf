resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "eastus"
}


resource "azurerm_virtual_network" "my_vnet" {
  name                = var.vnet_name
  address_space       = var.vnet_address_space
  location            = var.location
  resource_group_name = azurerm_resource_group.example.name
}

resource "azurerm_subnet" "my_subnet" {
  name                 = var.subnet_name
  resource_group_name  = azurerm_resource_group.example.name
  virtual_network_name = azurerm_virtual_network.my_vnet.name
  address_prefixes     = var.subnet_prefixes
}
