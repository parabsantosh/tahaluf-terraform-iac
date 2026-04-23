variable "hub_subscription_id" {
  description = "Hub subscription ID"
  type        = string
}
variable "tags" {
  type = map(string)
  
}
variable "hubnonprod_subscription_id" {
  description = "Hub subscription ID"
  type        = string
}

variable "identity_subscription_id" {
  description = "Identity subscription ID"
  type        = string
}

variable "nonprod_subscription_id" {
  description = "AVD subscription ID"
  type        = string
}

variable "prod_subscription_id" {
  description = "AVD subscription ID"
  type        = string
}

variable "mgmt_subscription_id" {
  description = "Mgmt subscription ID"
  type        = string
}
variable "security_subscription_id" {
  description = "security subscription ID"
  type        = string
}
variable "sandbox_subscription_id" {
  description = "Sandbox subscription ID"
  type        = string
}

###########################################################################
# resource group variables  
###########################################################################

variable "resource_groups_hub" {
  type = map(object({
    name     = string
    location = string
    tags     = map(string)
  }))
}
variable "resource_groups_identity" {
  type = map(object({
    name     = string
    location = string
    tags     = map(string)
  }))
}
 variable "resource_groups_nonprod" {
   type = map(object({
     name     = string
     location = string
     tags     = map(string)
   }))
 }
  variable "resource_groups_prod" {
   type = map(object({
     name     = string
     location = string
     tags     = map(string)
   }))
 }
variable "resource_groups_mgmt" {
  type = map(object({
    name     = string
    location = string
    tags     = map(string)
  }))
}
  variable "resource_groups_hubnonprod" {
   type = map(object({
     name     = string
     location = string
     tags     = map(string)
   }))
 }
   variable "resource_groups_security" {
   type = map(object({
     name     = string
     location = string
     tags     = map(string)
   }))
 }
    variable "resource_groups_dr" {
   type = map(object({
     name     = string
     location = string
     tags     = map(string)
   }))
 }
    variable "resource_groups_sandbox" {
   type = map(object({
     name     = string
     location = string
     tags     = map(string)
   }))
 }
###############################################################################
# Log Analytics Workspace variables 
###############################################################################

variable "log_analytics_mgmt" {
  type = map(object({
    name              = string
    rg_key            = string # key in resource_groups
    location          = string
    sku               = string # e.g., PerGB2018
    retention_in_days = number
    tags              = map(string)
  }))
}

variable "log_analytics_security" {
  type = map(object({
    name              = string
    rg_key            = string # key in resource_groups
    location          = string
    sku               = string # e.g., PerGB2018
    retention_in_days = number
    tags              = map(string)
  }))
}

################################################################################
# Virtual Netork variables 
################################################################################

variable "vnets_hub" {
  description = "VNets with subnets"
  type = map(object({
    vnet_name     = string
    rg_key        = string
    location      = string
    address_space = list(string)
    tags          = map(string)
    dns_servers   = list(string)
    subnets = map(object({
      address_prefixes = list(string)
    }))
  }))
}

variable "vnets_hubnonprod" {
  description = "VNets with subnets"
  type = map(object({
    vnet_name     = string
    rg_key        = string
    location      = string
    address_space = list(string)
    tags          = map(string)
    dns_servers   = list(string)
    subnets = map(object({
      address_prefixes = list(string)
    }))
  }))
}

 variable "vnets_nonprod" {
   description = "VNets with subnets"
   type = map(object({
     vnet_name     = string
     rg_key        = string
     location      = string
     address_space = list(string)
     tags          = map(string)
      dns_servers   = list(string)
     subnets = map(object({
       address_prefixes = list(string)
     }))
   }))
 }
  variable "vnets_prod" {
   description = "VNets with subnets"
   type = map(object({
     vnet_name     = string
     rg_key        = string
     location      = string
     address_space = list(string)
     tags          = map(string)
      dns_servers   = list(string)
     subnets = map(object({
       address_prefixes = list(string)
     }))
   }))
 }
variable "vnets_mgmt" {
  description = "VNets with subnets"
  type = map(object({
    vnet_name     = string
    rg_key        = string
    location      = string
    address_space = list(string)
    tags          = map(string)
    dns_servers   = list(string)
    subnets = map(object({
      address_prefixes = list(string)
    }))
  }))
}
variable "vnets_security" {
  description = "VNets with subnets"
  type = map(object({
    vnet_name     = string
    rg_key        = string
    location      = string
    address_space = list(string)
    tags          = map(string)
    dns_servers   = list(string)
    subnets = map(object({
      address_prefixes = list(string)
    }))
  }))
}
variable "vnets_dr" {
  description = "VNets with subnets"
  type = map(object({
    vnet_name     = string
    rg_key        = string
    location      = string
    address_space = list(string)
    tags          = map(string)
    dns_servers   = list(string)
    subnets = map(object({
      address_prefixes = list(string)
    }))
  }))
}
variable "vnets_identity" {
  description = "VNets with subnets"
  type = map(object({
    vnet_name     = string
    rg_key        = string
    location      = string
    address_space = list(string)
    tags          = map(string)
    dns_servers   = list(string)
    subnets = map(object({
      address_prefixes = list(string)
    }))
  }))
}

variable "vnets_sandbox" {
  description = "VNets with subnets"
  type = map(object({
    vnet_name     = string
    rg_key        = string
    location      = string
    address_space = list(string)
    tags          = map(string)
    dns_servers   = list(string)
    subnets = map(object({
      address_prefixes = list(string)
    }))
  }))
}




################################################################################
# Storage Account variables
################################################################################

variable "storage_accounts_mgmt" {
  description = "Storage accounts with optional Blob Private Endpoint and diagnostics"
  type = map(object({
    name                     = string
    rg_key                   = string
    location                 = string
    account_tier             = string
    account_replication_type = string
    tags                     = map(string)
    law_key                  = optional(string, null)

    # Blob Private Endpoint (only). Provide raw IDs OR reference vnet_key + subnet_name.
    private_endpoint = optional(object({
      # Option 1: raw IDs
      subnet_id : optional(string)
      vnet_id : optional(string)

      # Option 2: derive from vnet module
      vnet_key : optional(string)
      subnet_name : optional(string)

      create_private_dns_zones : optional(bool, true) # privatelink.blob.core.windows.net
    }), null)
  }))
}

################################################################################
# VNet Peering variables  
################################################################################

 variable "peerings_nonprod" {
   description = "Map of peering pairs hub<->spoke by vnet keys"
   type = map(object({
     hub_vnet_key                 = string # key in hub_vnets
     hub_vnet_rg_key              = string # key in hub_vnets
     spoke_vnet_key               = string # key in spoke_vnets
     spoke_vnet_rg_key            = string # key in spoke_vnets
     allow_virtual_network_access = optional(bool, true)
     allow_forwarded_traffic      = optional(bool, true)
     allow_gateway_transit        = optional(bool, false)
     use_remote_gateways          = optional(bool, true)
   }))
 }

 variable "peerings_prod" {
   description = "Map of peering pairs hub<->spoke by vnet keys"
   type = map(object({
     hub_vnet_key                 = string # key in hub_vnets
     hub_vnet_rg_key              = string # key in hub_vnets
     spoke_vnet_key               = string # key in spoke_vnets
     spoke_vnet_rg_key            = string # key in spoke_vnets
     allow_virtual_network_access = optional(bool, true)
     allow_forwarded_traffic      = optional(bool, true)
     allow_gateway_transit        = optional(bool, false)
     use_remote_gateways          = optional(bool, true)
   }))
 }


variable "peerings_mgmt" {
  description = "Map of peering pairs hub<->spoke by vnet keys"
  type = map(object({
    hub_vnet_key                 = string # key in hub_vnets
    hub_vnet_rg_key              = string # key in hub_vnets
    spoke_vnet_key               = string # key in spoke_vnets
    spoke_vnet_rg_key            = string # key in spoke_vnets
    allow_virtual_network_access = optional(bool, true)
    allow_forwarded_traffic      = optional(bool, true)
    allow_gateway_transit        = optional(bool, false)
    use_remote_gateways          = optional(bool, true)
  }))
}

variable "peerings_identity" {
  description = "Map of peering pairs hub<->spoke by vnet keys"
  type = map(object({
    hub_vnet_key                 = string # key in hub_vnets
    hub_vnet_rg_key              = string # key in hub_vnets
    spoke_vnet_key               = string # key in spoke_vnets
    spoke_vnet_rg_key            = string # key in spoke_vnets
    allow_virtual_network_access = optional(bool, true)
    allow_forwarded_traffic      = optional(bool, true)
    allow_gateway_transit        = optional(bool, false)
    use_remote_gateways          = optional(bool, true)
  }))
}

variable "peerings_security" {
  description = "Map of peering pairs hub<->spoke by vnet keys"
  type = map(object({
    hub_vnet_key                 = string # key in hub_vnets
    hub_vnet_rg_key              = string # key in hub_vnets
    spoke_vnet_key               = string # key in spoke_vnets
    spoke_vnet_rg_key            = string # key in spoke_vnets
    allow_virtual_network_access = optional(bool, true)
    allow_forwarded_traffic      = optional(bool, true)
    allow_gateway_transit        = optional(bool, false)
    use_remote_gateways          = optional(bool, true)
  }))
}

variable "peerings_hubnonprod" {
  description = "Map of peering pairs hub<->spoke by vnet keys"
  type = map(object({
    hub_vnet_key                 = string # key in hub_vnets
    hub_vnet_rg_key              = string # key in hub_vnets
    spoke_vnet_key               = string # key in spoke_vnets
    spoke_vnet_rg_key            = string # key in spoke_vnets
    allow_virtual_network_access = optional(bool, true)
    allow_forwarded_traffic      = optional(bool, true)
    allow_gateway_transit        = optional(bool, false)
    use_remote_gateways          = optional(bool, true)
  }))
}

variable "peerings_dr" {
  description = "Map of peering pairs hub<->spoke by vnet keys"
  type = map(object({
    hub_vnet_key                 = string # key in hub_vnets
    hub_vnet_rg_key              = string # key in hub_vnets
    spoke_vnet_key               = string # key in spoke_vnets
    spoke_vnet_rg_key            = string # key in spoke_vnets
    allow_virtual_network_access = optional(bool, true)
    allow_forwarded_traffic      = optional(bool, true)
    allow_gateway_transit        = optional(bool, false)
    use_remote_gateways          = optional(bool, true)
  }))
}



################################################################################
# Virtual Network Gateway variables
################################################################################
variable "lng_name" {} 
variable "lng_gateway_address"{}
variable "lng_address_space"{}
variable "vgw_subnet_address_space" {}
variable "vgw_subnet_name" {}
variable "vgw_vnet_name" {}
variable "vgw_pip_name" {}
variable "vgw_rg_name" {}
variable "vgw_rg_location" {}
variable "vgw_allocated-pip_method" {}
variable "vgw_pip_sku" {}
variable "vgw_tags" {}
variable "vgw_name" {}
variable "vgw_sku" {}
variable "connection_name" {}
variable "connection_sharedkey" {}