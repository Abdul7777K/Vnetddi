output "vnet_id" {
  value = azurerm_virtual_network.my_vnet.id
  description = "The ID of the virtual network"
}

output "subnet_id" {
  value = azurerm_subnet.my_subnet.id
  description = "The ID of the subnet"
}
