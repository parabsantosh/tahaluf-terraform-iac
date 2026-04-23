#### Resource Groups per subscription####
module "resource_groups_hub" {
  source    = "./modules/resource_group"
  for_each  = var.resource_groups_hub
  name      = each.value.name
  location  = each.value.location
  tags      = each.value.tags
  providers = { azurerm = azurerm.hub }
}

module "resource_groups_identity" {
  source    = "./modules/resource_group"
  for_each  = var.resource_groups_identity
  name      = each.value.name
  location  = each.value.location
  tags      = each.value.tags
  providers = { azurerm = azurerm.identity }
}

module "resource_groups_mgmt" {
  source    = "./modules/resource_group"
  for_each  = var.resource_groups_mgmt
  name      = each.value.name
  location  = each.value.location
  tags      = each.value.tags
  providers = { azurerm = azurerm.mgmt }
}

module "resource_groups_prod" {
  source    = "./modules/resource_group"
  for_each  = var.resource_groups_prod
  name      = each.value.name
  location  = each.value.location
  tags      = each.value.tags
  providers = { azurerm = azurerm.prod }
}

module "resource_groups_nonprod" {
  source    = "./modules/resource_group"
  for_each  = var.resource_groups_nonprod
  name      = each.value.name
  location  = each.value.location
  tags      = each.value.tags
  providers = { azurerm = azurerm.nonprod }
}

module "resource_groups_security" {
  source    = "./modules/resource_group"
  for_each  = var.resource_groups_security
  name      = each.value.name
  location  = each.value.location
  tags      = each.value.tags
  providers = { azurerm = azurerm.security }
}

module "resource_groups_hubnonprod" {
  source    = "./modules/resource_group"
  for_each  = var.resource_groups_hubnonprod
  name      = each.value.name
  location  = each.value.location
  tags      = each.value.tags
  providers = { azurerm = azurerm.hubnonprod }
}
module "resource_groups_dr" {
  source    = "./modules/resource_group"
  for_each  = var.resource_groups_dr
  name      = each.value.name
  location  = each.value.location
  tags      = each.value.tags
  providers = { azurerm = azurerm.dr }
}
/*
module "resource_groups_sandbox" {
  source    = "./modules/resource_group"
  for_each  = var.resource_groups_sandbox
  name      = each.value.name
  location  = each.value.location
  tags      = each.value.tags
  providers = { azurerm = azurerm.sandbox }
}*/

##### VNet & Subnets per subscription ####
module "vnets_hub" {
  source              = "./modules/vnet"
  for_each            = var.vnets_hub
  vnet_name           = each.value.vnet_name
  resource_group_name = module.resource_groups_hub[each.value.rg_key].rg_name
  location            = each.value.location
  address_space       = each.value.address_space
  subnets             = each.value.subnets
  dns_servers         = each.value.dns_servers
  tags                = each.value.tags
  providers           = { azurerm = azurerm.hub }
}

module "vnets_identity" {
  source              = "./modules/vnet"
  for_each            = var.vnets_identity
  vnet_name           = each.value.vnet_name
  resource_group_name = module.resource_groups_identity[each.value.rg_key].rg_name
  location            = each.value.location
  address_space       = each.value.address_space
  subnets             = each.value.subnets
  dns_servers         = each.value.dns_servers
  tags                = each.value.tags
  providers           = { azurerm = azurerm.identity }
}

 module "vnets_nonprod" {
   source   = "./modules/vnet"
   for_each = var.vnets_nonprod
   vnet_name           = each.value.vnet_name
   resource_group_name = module.resource_groups_nonprod[each.value.rg_key].rg_name
   location            = each.value.location
   address_space       = each.value.address_space
   subnets             = each.value.subnets
   dns_servers         = each.value.dns_servers
   tags                = each.value.tags
   providers = { azurerm = azurerm.nonprod }
 }

module "vnets_mgmt" {
  source              = "./modules/vnet"
  for_each            = var.vnets_mgmt
  vnet_name           = each.value.vnet_name
  resource_group_name = module.resource_groups_mgmt[each.value.rg_key].rg_name
  location            = each.value.location
  address_space       = each.value.address_space
  subnets             = each.value.subnets
  dns_servers         = each.value.dns_servers
  tags                = each.value.tags
  providers           = { azurerm = azurerm.mgmt }
}


module "vnets_prod" {
  source              = "./modules/vnet"
  for_each            = var.vnets_prod
  vnet_name           = each.value.vnet_name
  resource_group_name = module.resource_groups_prod[each.value.rg_key].rg_name
  location            = each.value.location
  address_space       = each.value.address_space
  subnets             = each.value.subnets
  dns_servers         = each.value.dns_servers
  tags                = each.value.tags
  providers           = { azurerm = azurerm.prod}
}

module "vnets_dr" {
  source              = "./modules/vnet"
  for_each            = var.vnets_dr
  vnet_name           = each.value.vnet_name
  resource_group_name = module.resource_groups_dr[each.value.rg_key].rg_name
  location            = each.value.location
  address_space       = each.value.address_space
  subnets             = each.value.subnets
  dns_servers         = each.value.dns_servers
  tags                = each.value.tags
  providers           = { azurerm = azurerm.dr}
}

module "vnets_security" {
  source              = "./modules/vnet"
  for_each            = var.vnets_security
  vnet_name           = each.value.vnet_name
  resource_group_name = module.resource_groups_security[each.value.rg_key].rg_name
  location            = each.value.location
  address_space       = each.value.address_space
  subnets             = each.value.subnets
  dns_servers         = each.value.dns_servers
  tags                = each.value.tags
  providers           = { azurerm = azurerm.security}
}

module "vnets_hubnonprod" {
  source              = "./modules/vnet"
  for_each            = var.vnets_hubnonprod
  vnet_name           = each.value.vnet_name
  resource_group_name = module.resource_groups_hubnonprod[each.value.rg_key].rg_name
  location            = each.value.location
  address_space       = each.value.address_space
  subnets             = each.value.subnets
  dns_servers         = each.value.dns_servers
  tags                = each.value.tags
  providers           = { azurerm = azurerm.hubnonprod}
}

/*
module "vnets_sandbox" {
  source              = "./modules/vnet"
  for_each            = var.vnets_sandbox
  vnet_name           = each.value.vnet_name
  resource_group_name = module.resource_groups_sandbox[each.value.rg_key].rg_name
  location            = each.value.location
  address_space       = each.value.address_space
  subnets             = each.value.subnets
  dns_servers         = each.value.dns_servers
  tags                = each.value.tags
  providers           = { azurerm = azurerm.sandbox}
}*/

############ VNET FLOW LOGS ###################
module "vnet_flow_logs_hub" {
  source                                = "./modules/network_watcher"
  for_each                              = var.vnets_hub
  vnet_name                             = each.value.vnet_name
  resource_group_name                   = module.resource_groups_hub[each.value.rg_key].rg_name
  target_resource_id                    = module.vnets_hub[each.key].vnet_id
  vnet_location                         = module.vnets_hub[each.key].location
  storage_account_id                    = module.storage_accounts_mgmt["sa_core"].id
  log_analytics_workspace_id            = module.log_analytics_mgmt["law_opr"].workspace_id
  log_analytics_workspace_region        = module.log_analytics_mgmt["law_opr"].workspace_location
  log_analytics_workspace_resource_id   = module.log_analytics_mgmt["law_opr"].id
  depends_on                            = [ module.storage_accounts_mgmt, module.log_analytics_mgmt, module.vnets_hub ]
  providers                             = { azurerm = azurerm.hub }
}

module "vnet_flow_logs_identity" {
  source                                = "./modules/network_watcher"
  for_each                              = var.vnets_identity
  vnet_name                             = each.value.vnet_name
  resource_group_name                   = module.resource_groups_identity[each.value.rg_key].rg_name
  target_resource_id                    = module.vnets_identity[each.key].vnet_id
  vnet_location                         = module.vnets_identity[each.key].location
  storage_account_id                    = module.storage_accounts_mgmt["sa_core"].id
  log_analytics_workspace_id            = module.log_analytics_mgmt["law_opr"].workspace_id
  log_analytics_workspace_region        = module.log_analytics_mgmt["law_opr"].workspace_location
  log_analytics_workspace_resource_id   = module.log_analytics_mgmt["law_opr"].id
  depends_on                            = [ module.storage_accounts_mgmt, module.log_analytics_mgmt, module.vnets_identity ]
  providers                             = { azurerm = azurerm.identity }
}

module "vnet_flow_logs_mgmt" {
  source                                = "./modules/network_watcher"
  for_each                              = var.vnets_mgmt
  vnet_name                             = each.value.vnet_name
  resource_group_name                   = module.resource_groups_mgmt[each.value.rg_key].rg_name
  target_resource_id                    = module.vnets_mgmt[each.key].vnet_id
  vnet_location                         = module.vnets_mgmt[each.key].location
  storage_account_id                    = module.storage_accounts_mgmt["sa_core"].id
  log_analytics_workspace_id            = module.log_analytics_mgmt["law_opr"].workspace_id
  log_analytics_workspace_region        = module.log_analytics_mgmt["law_opr"].workspace_location
  log_analytics_workspace_resource_id   = module.log_analytics_mgmt["law_opr"].id
  depends_on                            = [ module.storage_accounts_mgmt, module.log_analytics_mgmt, module.vnets_mgmt ]
  providers                             = { azurerm = azurerm.mgmt }
}

module "vnet_flow_logs_nonprod" {
  source                                = "./modules/network_watcher"
  for_each                              = var.vnets_nonprod
  vnet_name                             = each.value.vnet_name
  resource_group_name                   = module.resource_groups_nonprod[each.value.rg_key].rg_name
  target_resource_id                    = module.vnets_nonprod[each.key].vnet_id
  vnet_location                         = module.vnets_nonprod[each.key].location
  storage_account_id                    = module.storage_accounts_mgmt["sa_core"].id
  log_analytics_workspace_id            = module.log_analytics_mgmt["law_opr"].workspace_id
  log_analytics_workspace_region        = module.log_analytics_mgmt["law_opr"].workspace_location
  log_analytics_workspace_resource_id   = module.log_analytics_mgmt["law_opr"].id
  depends_on                            = [ module.storage_accounts_mgmt, module.log_analytics_mgmt, module.vnets_nonprod ]
  providers                             = { azurerm = azurerm.nonprod }
}

module "vnet_flow_logs_prod" {
  source                                = "./modules/network_watcher"
  for_each                              = var.vnets_prod
  vnet_name                             = each.value.vnet_name
  resource_group_name                   = module.resource_groups_prod[each.value.rg_key].rg_name
  target_resource_id                    = module.vnets_prod[each.key].vnet_id
  vnet_location                         = module.vnets_prod[each.key].location
  storage_account_id                    = module.storage_accounts_mgmt["sa_core"].id
  log_analytics_workspace_id            = module.log_analytics_mgmt["law_opr"].workspace_id
  log_analytics_workspace_region        = module.log_analytics_mgmt["law_opr"].workspace_location
  log_analytics_workspace_resource_id   = module.log_analytics_mgmt["law_opr"].id
  depends_on                            = [ module.storage_accounts_mgmt, module.log_analytics_mgmt, module.vnets_prod ]
  providers                             = { azurerm = azurerm.prod }
}

module "vnet_flow_logs_hubnonprod" {
  source                                = "./modules/network_watcher"
  for_each                              = var.vnets_hubnonprod
  vnet_name                             = each.value.vnet_name
  resource_group_name                   = module.resource_groups_hubnonprod[each.value.rg_key].rg_name
  target_resource_id                    = module.vnets_hubnonprod[each.key].vnet_id
  vnet_location                         = module.vnets_hubnonprod[each.key].location
  storage_account_id                    = module.storage_accounts_mgmt["sa_core"].id
  log_analytics_workspace_id            = module.log_analytics_mgmt["law_opr"].workspace_id
  log_analytics_workspace_region        = module.log_analytics_mgmt["law_opr"].workspace_location
  log_analytics_workspace_resource_id   = module.log_analytics_mgmt["law_opr"].id
  depends_on                            = [ module.storage_accounts_mgmt, module.log_analytics_mgmt, module.vnets_hubnonprod ]
  providers                             = { azurerm = azurerm.hubnonprod }
}
module "vnet_flow_logs_security" {
  source                                = "./modules/network_watcher"
  for_each                              = var.vnets_security
  vnet_name                             = each.value.vnet_name
  resource_group_name                   = module.resource_groups_security[each.value.rg_key].rg_name
  target_resource_id                    = module.vnets_security[each.key].vnet_id
  vnet_location                         = module.vnets_security[each.key].location
  storage_account_id                    = module.storage_accounts_mgmt["sa_core"].id
  log_analytics_workspace_id            = module.log_analytics_mgmt["law_opr"].workspace_id
  log_analytics_workspace_region        = module.log_analytics_mgmt["law_opr"].workspace_location
  log_analytics_workspace_resource_id   = module.log_analytics_mgmt["law_opr"].id
  depends_on                            = [ module.storage_accounts_mgmt, module.log_analytics_mgmt, module.vnets_security ]
  providers                             = { azurerm = azurerm.security }
}
module "vnet_flow_logs_dr" {
  source                                = "./modules/network_watcher"
  for_each                              = var.vnets_dr  
  vnet_name                             = each.value.vnet_name
  resource_group_name                   = module.resource_groups_dr[each.value.rg_key].rg_name
  target_resource_id                    = module.vnets_dr[each.key].vnet_id
  vnet_location                         = module.vnets_dr[each.key].location
  storage_account_id                    = module.storage_accounts_mgmt["sa_core"].id
  log_analytics_workspace_id            = module.log_analytics_mgmt["law_opr"].workspace_id
  log_analytics_workspace_region        = module.log_analytics_mgmt["law_opr"].workspace_location
  log_analytics_workspace_resource_id   = module.log_analytics_mgmt["law_opr"].id
  depends_on                            = [ module.storage_accounts_mgmt, module.log_analytics_mgmt, module.vnets_dr ]
  providers                             = { azurerm = azurerm.dr }
}

/*
module "vnet_flow_logs_sandbox" {
  source                                = "./modules/network_watcher"
  for_each                              = var.vnets_sandbox
  vnet_name                             = each.value.vnet_name
  resource_group_name                   = module.resource_groups_sandbox[each.value.rg_key].rg_name
  target_resource_id                    = module.vnets_sandbox[each.key].vnet_id
  vnet_location                         = module.vnets_sandbox[each.key].location
  storage_account_id                    = module.storage_accounts_mgmt["sa_core"].id
  log_analytics_workspace_id            = module.log_analytics_mgmt["law_opr"].workspace_id
  log_analytics_workspace_region        = module.log_analytics_mgmt["law_opr"].workspace_location
  log_analytics_workspace_resource_id   = module.log_analytics_mgmt["law_opr"].id
  depends_on                            = [ module.storage_accounts_mgmt, module.log_analytics_mgmt, module.vnets_sandbox ]
  providers                             = { azurerm = azurerm.sandbox }
}*/


#############VPN gateway########

module "local_network_gateway" {
  source = "./modules/local_network_gateway"
  lng_name            = var.lng_name
  lng_rg_name         = var.resource_groups_hub["hub_nw"].name
  lng_location        = var.resource_groups_hub["hub_nw"].location
  lng_gateway_address = var.lng_gateway_address       # on-prem public IP
  lng_address_space   = var.lng_address_space    # on-prem address space(s)
  depends_on          = [module.vnets_hub, module.resource_groups_hub]
  lng_tags            = var.tags  
  providers           = { azurerm = azurerm.hub }
}

module "vnet_gateway" {
  source = "./modules/vnet_gateway"
  vgw_vnet_name               = var.vgw_vnet_name
  vgw_subnet_name             = var.vgw_subnet_name
  vgw_subnet_address_space    = var.vgw_subnet_address_space
  vgw_pip_name                = var.vgw_pip_name
  vgw_rg_name                 = var.resource_groups_hub["hub_nw"].name
  vgw_rg_location             = var.resource_groups_hub["hub_nw"].location
  vgw_allocated-pip_method    = var.vgw_allocated-pip_method
  vgw_pip_sku                 = var.vgw_pip_sku
  vgw_tags                    = var.tags
  vgw_name                    = var.vgw_name
  vgw_sku                     = var.vgw_sku
  depends_on                  = [module.vnets_hub, module.resource_groups_hub]
  providers                   = { azurerm = azurerm.hub }
}

module "vpn_connection" {
  source = "./modules/vpn_connection"

  connection_name       = var.connection_name
  connection_location   = var.resource_groups_hub["hub_nw"].location
  connection_rg_name    = var.resource_groups_hub["hub_nw"].name

  connection_vgw_id     = module.vnet_gateway.vgw_id
  connection_lng_id     = module.local_network_gateway.lng_id

  connection_sharedkey  = var.connection_sharedkey
  depends_on            = [module.vnets_hub, module.resource_groups_hub]

  connection_tags = {}
  providers           = { azurerm = azurerm.hub }
}

#############Peerings###################

 module "peerings_nonprod" {
   source            = "./modules/vnet_peering"
   for_each          = var.peerings_nonprod
   providers         = {
     azurerm.hub     = azurerm.hub
     azurerm.spoke   = azurerm.nonprod
   }

   hub_vnet_name     = var.vnets_hub[each.value.hub_vnet_key].vnet_name
   hub_rg_name       = var.resource_groups_hub[each.value.hub_vnet_rg_key].name
   hub_vnet_id   = module.vnets_hub[each.value.hub_vnet_key].vnet_id
   # Spoke side
   spoke_vnet_name = var.vnets_nonprod[each.value.spoke_vnet_key].vnet_name
   spoke_rg_name   = var.resource_groups_nonprod[each.value.spoke_vnet_rg_key].name
   spoke_vnet_id   = module.vnets_nonprod[each.value.spoke_vnet_key].vnet_id

   allow_virtual_network_access = each.value.allow_virtual_network_access
   allow_forwarded_traffic      = each.value.allow_forwarded_traffic
   allow_gateway_transit        = each.value.allow_gateway_transit
   use_remote_gateways          = each.value.use_remote_gateways
     # Make sure VNets are created before peering runs
   depends_on = [module.vnets_hub, module.vnets_nonprod, module.vnet_gateway]
 }

   module "peerings_prod" {
   source            = "./modules/vnet_peering"
   for_each          = var.peerings_prod
   providers         = {
     azurerm.hub     = azurerm.hub
     azurerm.spoke   = azurerm.prod
   }

   hub_vnet_name     = var.vnets_hub[each.value.hub_vnet_key].vnet_name
   hub_rg_name       = var.resource_groups_hub[each.value.hub_vnet_rg_key].name
   hub_vnet_id   = module.vnets_hub[each.value.hub_vnet_key].vnet_id
   # Spoke side
   spoke_vnet_name = var.vnets_prod[each.value.spoke_vnet_key].vnet_name
   spoke_rg_name   = var.resource_groups_prod[each.value.spoke_vnet_rg_key].name
   spoke_vnet_id   = module.vnets_prod[each.value.spoke_vnet_key].vnet_id

   allow_virtual_network_access = each.value.allow_virtual_network_access
   allow_forwarded_traffic      = each.value.allow_forwarded_traffic
   allow_gateway_transit        = each.value.allow_gateway_transit
   use_remote_gateways          = each.value.use_remote_gateways
     # Make sure VNets are created before peering runs
   depends_on = [module.vnets_hub, module.vnets_prod, module.vnet_gateway]
 } 

module "peerings_identity" {
  source   = "./modules/vnet_peering"
  for_each = var.peerings_identity
  providers = {
    azurerm.hub   = azurerm.hub
    azurerm.spoke = azurerm.identity
  }

  hub_vnet_name = var.vnets_hub[each.value.hub_vnet_key].vnet_name
  hub_rg_name   = var.resource_groups_hub[each.value.hub_vnet_rg_key].name
  hub_vnet_id   = module.vnets_hub[each.value.hub_vnet_key].vnet_id
  # Spoke side
  spoke_vnet_name = var.vnets_identity[each.value.spoke_vnet_key].vnet_name
  spoke_rg_name   = var.resource_groups_identity[each.value.spoke_vnet_rg_key].name
  spoke_vnet_id   = module.vnets_identity[each.value.spoke_vnet_key].vnet_id

  allow_virtual_network_access = each.value.allow_virtual_network_access
  allow_forwarded_traffic      = each.value.allow_forwarded_traffic
  allow_gateway_transit        = each.value.allow_gateway_transit
  use_remote_gateways          = each.value.use_remote_gateways
  # Make sure VNets are created before peering runs
  depends_on = [module.vnets_hub, module.vnets_identity, module.vnet_gateway]
}

module "peerings_mgmt" {
  source   = "./modules/vnet_peering"
  for_each = var.peerings_mgmt
  providers = {
    azurerm.hub   = azurerm.hub
    azurerm.spoke = azurerm.mgmt
  }

  hub_vnet_name = var.vnets_hub[each.value.hub_vnet_key].vnet_name
  hub_rg_name   = var.resource_groups_hub[each.value.hub_vnet_rg_key].name
  hub_vnet_id   = module.vnets_hub[each.value.hub_vnet_key].vnet_id
  # Spoke side
  spoke_vnet_name = var.vnets_mgmt[each.value.spoke_vnet_key].vnet_name
  spoke_rg_name   = var.resource_groups_mgmt[each.value.spoke_vnet_rg_key].name
  spoke_vnet_id   = module.vnets_mgmt[each.value.spoke_vnet_key].vnet_id

  allow_virtual_network_access = each.value.allow_virtual_network_access
  allow_forwarded_traffic      = each.value.allow_forwarded_traffic
  allow_gateway_transit        = each.value.allow_gateway_transit
  use_remote_gateways          = each.value.use_remote_gateways
  # Make sure VNets are created before peering runs
  depends_on = [module.vnets_hub, module.vnets_mgmt, module.vnet_gateway]
}

module "peerings_hubnonprod" {
  source   = "./modules/vnet_peering"
  for_each = var.peerings_hubnonprod
  providers = {
    azurerm.hub   = azurerm.hub
    azurerm.spoke = azurerm.hubnonprod
  }

  hub_vnet_name = var.vnets_hub[each.value.hub_vnet_key].vnet_name
  hub_rg_name   = var.resource_groups_hub[each.value.hub_vnet_rg_key].name
  hub_vnet_id   = module.vnets_hub[each.value.hub_vnet_key].vnet_id
  # Spoke side
  spoke_vnet_name = var.vnets_hubnonprod[each.value.spoke_vnet_key].vnet_name
  spoke_rg_name   = var.resource_groups_hubnonprod[each.value.spoke_vnet_rg_key].name
  spoke_vnet_id   = module.vnets_hubnonprod[each.value.spoke_vnet_key].vnet_id
  allow_virtual_network_access = each.value.allow_virtual_network_access
  allow_forwarded_traffic      = each.value.allow_forwarded_traffic
  allow_gateway_transit        = each.value.allow_gateway_transit
  use_remote_gateways          = each.value.use_remote_gateways
  # Make sure VNets are created before peering runs
  depends_on = [module.vnets_hub, module.vnets_hubnonprod, module.vnet_gateway]
}

module "peerings_security" {
  source   = "./modules/vnet_peering"
  for_each = var.peerings_security
  providers = {
    azurerm.hub   = azurerm.hub
    azurerm.spoke = azurerm.security
  }

  hub_vnet_name = var.vnets_hub[each.value.hub_vnet_key].vnet_name
  hub_rg_name   = var.resource_groups_hub[each.value.hub_vnet_rg_key].name
  hub_vnet_id   = module.vnets_hub[each.value.hub_vnet_key].vnet_id
  # Spoke side
  spoke_vnet_name = var.vnets_security[each.value.spoke_vnet_key].vnet_name
  spoke_rg_name   = var.resource_groups_security[each.value.spoke_vnet_rg_key].name
  spoke_vnet_id   = module.vnets_security[each.value.spoke_vnet_key].vnet_id

  allow_virtual_network_access = each.value.allow_virtual_network_access
  allow_forwarded_traffic      = each.value.allow_forwarded_traffic
  allow_gateway_transit        = each.value.allow_gateway_transit
  use_remote_gateways          = each.value.use_remote_gateways
  # Make sure VNets are created before peering runs
  depends_on = [module.vnets_hub, module.vnets_security, module.vnet_gateway]
}

module "peerings_dr" {
  source   = "./modules/vnet_peering"
  for_each = var.peerings_dr
  providers = {
    azurerm.hub   = azurerm.hub
    azurerm.spoke = azurerm.dr
  }

  hub_vnet_name = var.vnets_hub[each.value.hub_vnet_key].vnet_name
  hub_rg_name   = var.resource_groups_hub[each.value.hub_vnet_rg_key].name
  hub_vnet_id   = module.vnets_hub[each.value.hub_vnet_key].vnet_id
  # Spoke side
  spoke_vnet_name = var.vnets_dr[each.value.spoke_vnet_key].vnet_name
  spoke_rg_name   = var.resource_groups_dr[each.value.spoke_vnet_rg_key].name
  spoke_vnet_id   = module.vnets_dr[each.value.spoke_vnet_key].vnet_id

  allow_virtual_network_access = each.value.allow_virtual_network_access
  allow_forwarded_traffic      = each.value.allow_forwarded_traffic
  allow_gateway_transit        = each.value.allow_gateway_transit
  use_remote_gateways          = each.value.use_remote_gateways
  # Make sure VNets are created before peering runs
  depends_on = [module.vnets_hub, module.vnets_dr, module.vnet_gateway]
}


#### Log Analytics per subscription#####
module "log_analytics_mgmt" {
  source              = "./modules/log_analytics"
  for_each            = var.log_analytics_mgmt
  name                = each.value.name
  resource_group_name = module.resource_groups_mgmt[each.value.rg_key].rg_name
  location            = each.value.location
  sku                 = each.value.sku
  retention_in_days   = each.value.retention_in_days
  tags                = each.value.tags
  providers           = { azurerm = azurerm.mgmt }
}

module "log_analytics_security" {
  source              = "./modules/log_analytics"
  for_each            = var.log_analytics_security
  name                = each.value.name
  resource_group_name = module.resource_groups_security[each.value.rg_key].rg_name
  location            = each.value.location
  sku                 = each.value.sku
  retention_in_days   = each.value.retention_in_days
  tags                = each.value.tags
  providers           = { azurerm = azurerm.security }
}

#### Storage Accounts (+ Blob PE + Diagnostics) ####
module "storage_accounts_mgmt" {
  source                   = "./modules/storage_account"
  for_each                 = var.storage_accounts_mgmt
  name                     = each.value.name
  resource_group_name      = module.resource_groups_mgmt[each.value.rg_key].rg_name
  location                 = each.value.location
  account_tier             = each.value.account_tier
  account_replication_type = each.value.account_replication_type
  tags                     = each.value.tags
  log_analytics_workspace_id = module.log_analytics_mgmt["law_opr"].id
  depends_on               = [module.log_analytics_mgmt]
  providers                = { azurerm = azurerm.mgmt }
}


output "rg_names_hub" { value = { for k, m in module.resource_groups_hub : k => m.rg_name } }
output "rg_names_identity" { value = { for k, m in module.resource_groups_identity : k => m.rg_name } }
output "rg_names_nonprod"    { value = { for k, m in module.resource_groups_nonprod  : k => m.rg_name } }
output "rg_names_mgmt" { value = { for k, m in module.resource_groups_mgmt : k => m.rg_name } }
output "rg_names_prod" { value = { for k, m in module.resource_groups_prod : k => m.rg_name } }
//output "rg_names_sandbox" { value = { for k, m in module.resource_groups_sandbox : k => m.rg_name } }
output "rg_names_security" { value = { for k, m in module.resource_groups_security : k => m.rg_name } }
output "rg_names_hubnonprod" { value = { for k, m in module.resource_groups_hubnonprod : k => m.rg_name } }
/*
output "vnets_all" {
  value = merge(
    { for k, m in module.vnets_identity : k => m.vnet_id },
    #{ for k, m in module.vnets_nonprod      : k => m.vnet_id },
    { for k, m in module.vnets_mgmt : k => m.vnet_id }
  )
}*/
output "sa_mgmt_names" { value = { for k, m in module.storage_accounts_mgmt : k => m.name } }
output "law_mgmt_names" { value = { for k, m in module.log_analytics_mgmt : k => m.workspace_name } }
output "law_security_names" { value = { for k, m in module.log_analytics_security : k => m.workspace_name } }
