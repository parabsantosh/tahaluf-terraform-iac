output "vnet_id"        { value = azurerm_virtual_network.vnet.id }
output "vnet_guid"        { value = azurerm_virtual_network.vnet.guid }
output "vnet_name"      { value = azurerm_virtual_network.vnet.name }
output "vnet_rg_name"   { value = azurerm_virtual_network.vnet.resource_group_name }
output "subnet_ids"     { value = { for k, s in azurerm_subnet.subnets : k => s.id } }
output "subnet_names"   { value = keys(azurerm_subnet.subnets) }
output "location"        { value = azurerm_virtual_network.vnet.location}