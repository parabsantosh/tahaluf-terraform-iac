hub_subscription_id      = "f5970f11-9bb9-48a5-b108-94a9a87f375a"
identity_subscription_id = "6a53a48f-76d6-4349-9ecd-bfbb8d82e634"
prod_subscription_id  = "9b3adb4f-c4b1-4395-b836-72d0cadba0ed"
nonprod_subscription_id  = "5ea770a7-daa0-4138-8728-6e2e84cd7d57"
mgmt_subscription_id     = "9f8c5402-8b5c-48a1-a0c5-af295629fdb6"
hubnonprod_subscription_id = "12321f18-f0c1-4931-a504-c9fd2df1c8af"
security_subscription_id = "7fa902e3-6878-47b0-babc-5d4370d6b92c"
sandbox_subscription_id = "29705d64-d25e-483a-9fd7-60bb316c32cd"
tags = { OWNER = "user@company.com", APPLICATION = "HUB-Infra", ENVIRONMENT = "Prod", DEPARTMENT = "Engineering", CRITICALITY = "High", PROJECT = "IT", DATA_CLASSIFICATION = "Internal", MANAGED_BY = "CloudTeam", COMPLIANCE = "UAE IA", COST_CENTER = "TAH-001" }

############resource group parameters#############

resource_groups_hub = {
  hub_infra = {
    name     = "RG-TAH-UAEN-HUB-INFRA-01"
    location = "UAE North"
    tags = { OWNER = "user@company.com", APPLICATION = "HUB-Infra", ENVIRONMENT = "Prod", DEPARTMENT = "Engineering", CRITICALITY = "High", PROJECT = "IT", DATA_CLASSIFICATION = "Internal", MANAGED_BY = "CloudTeam", COMPLIANCE = "UAE IA", COST_CENTER = "TAH-001" }
  }
  
  hub_nw = {
    name     = "RG-TAH-UAEN-HUB-NW-01"
    location = "UAE North"
    tags = { OWNER = "user@company.com", APPLICATION = "HUB-NW", ENVIRONMENT = "Prod", DEPARTMENT = "Engineering", CRITICALITY = "High", PROJECT = "IT", DATA_CLASSIFICATION = "Internal", MANAGED_BY = "CloudTeam", COMPLIANCE = "UAE IA", COST_CENTER = "TAH-001" }

  }
}

resource_groups_hubnonprod = {
  hubnonprod_infra = {
    name     = "RG-TAH-UAEN-HUB-NONPROD-INFRA-01"
    location = "UAE North"
    tags = { OWNER = "user@company.com", APPLICATION = "HUB-NONPROD-INFRA", ENVIRONMENT = "NonProd", DEPARTMENT = "Engineering", CRITICALITY = "Medium", PROJECT = "IT", DATA_CLASSIFICATION = "Internal", MANAGED_BY = "CloudTeam", COMPLIANCE = "UAE IA", COST_CENTER = "TAH-001" }
  }
  
  hubnonprod_nw = {
    name     = "RG-TAH-UAEN-HUB-NONPROD-NW-01"
    location = "UAE North"
    tags = { OWNER = "user@company.com", APPLICATION = "HUB-NONPROD-NW", ENVIRONMENT = "NonProd", DEPARTMENT = "Engineering", CRITICALITY = "Medium", PROJECT = "IT", DATA_CLASSIFICATION = "Internal", MANAGED_BY = "CloudTeam", COMPLIANCE = "UAE IA", COST_CENTER = "TAH-001" }

  }
}

resource_groups_identity = {
  identity_nw = {
    name     = "RG-TAH-UAEN-IDENTITY-NW-01"
    location = "UAE North"
    tags = { OWNER = "user@company.com", APPLICATION = "IDENTITY-NW", ENVIRONMENT = "Prod", DEPARTMENT = "Engineering", CRITICALITY = "High", PROJECT = "IT", DATA_CLASSIFICATION = "Internal", MANAGED_BY = "CloudTeam", COMPLIANCE = "UAE IA", COST_CENTER = "TAH-001" }

  }
  identity_infra = {
    name     = "RG-TAH-UAEN-IDENTITY-INFRA-01"
    location = "UAE North"
    tags = { OWNER = "user@company.com", APPLICATION = "IDENTITY-INFRA", ENVIRONMENT = "Prod", DEPARTMENT = "Engineering", CRITICALITY = "High", PROJECT = "IT", DATA_CLASSIFICATION = "Internal", MANAGED_BY = "CloudTeam", COMPLIANCE = "UAE IA", COST_CENTER = "TAH-001" }
  }
}

resource_groups_mgmt = {
  mgmt_nw = {
    name     = "RG-TAH-UAEN-MGMT-NW-01"
    location = "UAE North"
    tags = { OWNER = "user@company.com", APPLICATION = "MGMT-NW", ENVIRONMENT = "Prod", DEPARTMENT = "Engineering", CRITICALITY = "High", PROJECT = "IT", DATA_CLASSIFICATION = "Internal", MANAGED_BY = "CloudTeam", COMPLIANCE = "UAE IA", COST_CENTER = "TAH-001" }

  }
  mgmt_infra = {
    name     = "RG-TAH-UAEN-MGMT-INFRA-01"
    location = "UAE North"
    tags = { OWNER = "user@company.com", APPLICATION = "MGMT-INFRA", ENVIRONMENT = "Prod", DEPARTMENT = "Engineering", CRITICALITY = "High", PROJECT = "IT", DATA_CLASSIFICATION = "Internal", MANAGED_BY = "CloudTeam", COMPLIANCE = "UAE IA", COST_CENTER = "TAH-001" }

  }
}

resource_groups_prod = {
  prod_nw = {
    name     = "RG-TAH-UAEN-PROD-NW-01"
    location = "UAE North"
    tags = { OWNER = "user@company.com", APPLICATION = "PROD-NW", ENVIRONMENT = "Prod", DEPARTMENT = "Engineering", CRITICALITY = "High", PROJECT = "IT", DATA_CLASSIFICATION = "Internal", MANAGED_BY = "CloudTeam", COMPLIANCE = "UAE IA", COST_CENTER = "TAH-001" }

  }
  prod_infra = {
    name     = "RG-TAH-UAEN-PROD-INFRA-01"
    location = "UAE North"
    tags = { OWNER = "user@company.com", APPLICATION = "PROD-INFRA", ENVIRONMENT = "Prod", DEPARTMENT = "Engineering", CRITICALITY = "High", PROJECT = "IT", DATA_CLASSIFICATION = "Internal", MANAGED_BY = "CloudTeam", COMPLIANCE = "UAE IA", COST_CENTER = "TAH-001" }

  }
  prod_data = {
    name     = "RG-TAH-UAEN-PROD-DATA-01"
    location = "UAE North"
    tags = { OWNER = "user@company.com", APPLICATION = "PROD-DATA", ENVIRONMENT = "Prod", DEPARTMENT = "Engineering", CRITICALITY = "High", PROJECT = "IT", DATA_CLASSIFICATION = "Internal", MANAGED_BY = "CloudTeam", COMPLIANCE = "UAE IA", COST_CENTER = "TAH-001" }

  }
}

resource_groups_nonprod = {
  nonprod_nw = {
    name     = "RG-TAH-UAEN-NONPROD-NW-01"
    location = "UAE North"
    tags = { OWNER = "user@company.com", APPLICATION = "NONPROD-NW", ENVIRONMENT = "NonProd", DEPARTMENT = "Engineering", CRITICALITY = "Medium", PROJECT = "IT", DATA_CLASSIFICATION = "Internal", MANAGED_BY = "CloudTeam", COMPLIANCE = "UAE IA", COST_CENTER = "TAH-001" }

  }
  nonprod_infra = {
    name     = "RG-TAH-UAEN-NONPROD-INFRA-01"
    location = "UAE North"
    tags = { OWNER = "user@company.com", APPLICATION = "NONPROD-INFRA", ENVIRONMENT = "NonProd", DEPARTMENT = "Engineering", CRITICALITY = "Medium", PROJECT = "IT", DATA_CLASSIFICATION = "Internal", MANAGED_BY = "CloudTeam", COMPLIANCE = "UAE IA", COST_CENTER = "TAH-001" }

  }
    nonprod_data = {
    name     = "RG-TAH-UAEN-NONPROD-DATA-01"
    location = "UAE North"
    tags = { OWNER = "user@company.com", APPLICATION = "NONPROD-DATA", ENVIRONMENT = "NonProd", DEPARTMENT = "Engineering", CRITICALITY = "Medium", PROJECT = "IT", DATA_CLASSIFICATION = "Internal", MANAGED_BY = "CloudTeam", COMPLIANCE = "UAE IA", COST_CENTER = "TAH-001" }

  }
}

resource_groups_dr = {
  dr_nw = {
    name     = "RG-TAH-UAEN-DR-NW-01"
    location = "UAE North"
    tags = { OWNER = "user@company.com", APPLICATION = "DR-NW", ENVIRONMENT = "DR", DEPARTMENT = "Engineering", CRITICALITY = "High", PROJECT = "IT", DATA_CLASSIFICATION = "Internal", MANAGED_BY = "CloudTeam", COMPLIANCE = "UAE IA", COST_CENTER = "TAH-001" }

  }
  dr_infra = {
    name     = "RG-TAH-UAEN-DR-INFRA-01"
    location = "UAE North"
    tags = { OWNER = "user@company.com", APPLICATION = "DR-INFRA", ENVIRONMENT = "DR", DEPARTMENT = "Engineering", CRITICALITY = "High", PROJECT = "IT", DATA_CLASSIFICATION = "Internal", MANAGED_BY = "CloudTeam", COMPLIANCE = "UAE IA", COST_CENTER = "TAH-001" }

  }
    dr_data = {
    name     = "RG-TAH-UAEN-DR-DATA-01"
    location = "UAE North"
    tags = { OWNER = "user@company.com", APPLICATION = "DR-DATA", ENVIRONMENT = "DR", DEPARTMENT = "Engineering", CRITICALITY = "High", PROJECT = "IT", DATA_CLASSIFICATION = "Internal", MANAGED_BY = "CloudTeam", COMPLIANCE = "UAE IA", COST_CENTER = "TAH-001" }

  }
}

resource_groups_security = {
  sec_nw = {
    name     = "RG-TAH-UAEN-SEC-NW-01"
    location = "UAE North"
    tags = { OWNER = "user@company.com", APPLICATION = "SEC-NW", ENVIRONMENT = "Sec", DEPARTMENT = "Engineering", CRITICALITY = "High", PROJECT = "IT", DATA_CLASSIFICATION = "Internal", MANAGED_BY = "CloudTeam", COMPLIANCE = "UAE IA", COST_CENTER = "TAH-001" }

  }
  sec_infra = {
    name     = "RG-TAH-UAEN-SEC-INFRA-01"
    location = "UAE North"
    tags = { OWNER = "user@company.com", APPLICATION = "SEC-INFRA", ENVIRONMENT = "Sec", DEPARTMENT = "Engineering", CRITICALITY = "High", PROJECT = "IT", DATA_CLASSIFICATION = "Internal", MANAGED_BY = "CloudTeam", COMPLIANCE = "UAE IA", COST_CENTER = "TAH-001" }

  }
}

resource_groups_sandbox = {
  sandbox_nw = {
    name     = "RG-TAH-UAEN-SANDBOX-NW-01"
    location = "UAE North"
    tags = { OWNER = "user@company.com", APPLICATION = "SANDBOX-NW", ENVIRONMENT = "Sandbox", DEPARTMENT = "Engineering", CRITICALITY = "High", PROJECT = "IT", DATA_CLASSIFICATION = "Internal", MANAGED_BY = "CloudTeam", COMPLIANCE = "UAE IA", COST_CENTER = "TAH-001" }

  }
  sandbox_infra = {
    name     = "RG-TAH-UAEN-SANDBOX-INFRA-01"
    location = "UAE North"
    tags = { OWNER = "user@company.com", APPLICATION = "SANDBOX-INFRA", ENVIRONMENT = "Sandbox", DEPARTMENT = "Engineering", CRITICALITY = "High", PROJECT = "IT", DATA_CLASSIFICATION = "Internal", MANAGED_BY = "CloudTeam", COMPLIANCE = "UAE IA", COST_CENTER = "TAH-001" }

  }
}


############Log Analytics Workspace parameters#############
log_analytics_mgmt = {
  law_opr = {
    name              = "LAW-TAH-UAEN-OPR-01"
    rg_key            = "mgmt_infra"
    location          = "UAE North"
    sku               = "PerGB2018"
    retention_in_days = 90
    tags = { OWNER = "user@company.com", APPLICATION = "Logs-OPR", ENVIRONMENT = "Production", DEPARTMENT = "Engineering", CRITICALITY = "High", PROJECT = "IT", DATA_CLASSIFICATION = "Internal", MANAGED_BY = "CloudTeam", COMPLIANCE = "UAE IA", COST_CENTER = "TAH-001" }

  }
}

log_analytics_security = {
  law_soc = {
    name              = "LAW-TAH-UAEN-SOC-01"
    rg_key            = "sec_infra"
    location          = "UAE North"
    sku               = "PerGB2018"
    retention_in_days = 90
    tags = { OWNER = "user@company.com", APPLICATION = "Logs-SOC", ENVIRONMENT = "Production", DEPARTMENT = "Engineering", CRITICALITY = "High", PROJECT = "IT", DATA_CLASSIFICATION = "Internal", MANAGED_BY = "CloudTeam", COMPLIANCE = "UAE IA", COST_CENTER = "TAH-001" }

  }
}

############vnet parameters#############

vnets_hub = {
  hub = {
    vnet_name     = "VNET-TAH-UAEN-HUB-01"
    rg_key        = "hub_nw"
    location      = "UAE North"
    address_space = ["10.8.0.0/22"]
    dns_servers   = ["10.8.2.100"]
    tags = { OWNER = "user@company.com", APPLICATION = "HUB", ENVIRONMENT = "Production", DEPARTMENT = "Engineering", CRITICALITY = "High", PROJECT = "IT", DATA_CLASSIFICATION = "Internal", MANAGED_BY = "CloudTeam", COMPLIANCE = "UAE IA", COST_CENTER = "TAH-001" }

    subnets = {
      SNET-TAH-UAEN-AGW-01 = { address_prefixes = ["10.8.2.0/26"] }
      SNET-TAH-UAEN-EAP-PROD-01 = { address_prefixes = ["10.8.2.64/27"] }
      SNET-TAH-UAEN-DNSPRIN-01 = { address_prefixes = ["10.8.2.96/28"] }
      SNET-TAH-UAEN-DNSPROUT-01 = { address_prefixes = ["10.8.2.112/28"] }
    }
  }
}

vnets_hubnonprod = {
  hubnonprod = {
    vnet_name     = "VNET-TAH-UAEN-HUB-NONPROD-01"
    rg_key        = "hubnonprod_nw"
    location      = "UAE North"
    address_space = ["10.8.5.0/24"]
    dns_servers   = ["10.8.2.100"]
    tags = { OWNER = "user@company.com", APPLICATION = "HUB-NONPROD", ENVIRONMENT = "Non-Production", DEPARTMENT = "Engineering", CRITICALITY = "High", PROJECT = "IT", DATA_CLASSIFICATION = "Internal", MANAGED_BY = "CloudTeam", COMPLIANCE = "UAE IA", COST_CENTER = "TAH-001" }

    subnets = {
      SNET-TAH-UAEN-HUB-NONPROD-01 = { address_prefixes = ["10.8.5.0/26"] }
    }
  }
}

vnets_mgmt = {
  mgmt = {
    vnet_name     = "VNET-TAH-UAEN-MGMT-01"
    rg_key        = "mgmt_nw"
    location      = "UAE North"
    address_space = ["10.8.4.128/25"]
    dns_servers   = ["10.8.2.100"]
    tags = { OWNER = "user@company.com", APPLICATION = "MGMT", ENVIRONMENT = "Production", DEPARTMENT = "Engineering", CRITICALITY = "High", PROJECT = "IT", DATA_CLASSIFICATION = "Internal", MANAGED_BY = "CloudTeam", COMPLIANCE = "UAE IA", COST_CENTER = "TAH-001" }

    subnets = {
      SNET-TAH-UAEN-AKS-01 = { address_prefixes = ["10.8.4.128/26"] }
      SNET-TAH-UAEN-MGMT-PEP-01 = { address_prefixes = ["10.8.4.192/27"] }
      SNET-TAH-UAEN-VM-01 = { address_prefixes = ["10.8.4.224/27"] }
    }
  }
}

vnets_identity = {
  identity = {
    vnet_name     = "VNET-TAH-UAEN-IDENTITY-01"
    rg_key        = "identity_nw"
    location      = "UAE North"
    address_space = ["10.8.4.0/25"]
    dns_servers   = ["10.8.2.100"]
    tags = { OWNER = "user@company.com", APPLICATION = "IDENTITY", ENVIRONMENT = "Production", DEPARTMENT = "Engineering", CRITICALITY = "High", PROJECT = "IT", DATA_CLASSIFICATION = "Internal", MANAGED_BY = "CloudTeam", COMPLIANCE = "UAE IA", COST_CENTER = "TAH-001" }

    subnets = {
      SNET-TAH-UAEN-IDENTITY-01 = { address_prefixes = ["10.8.4.0/27"] }
    }
  }
}
 vnets_prod = {
   prod = {
     vnet_name     = "VNET-TAH-UAEN-PROD-01"
     rg_key        = "prod_nw"
     location      = "UAE North"
     address_space = ["10.8.8.0/21"]
     dns_servers   = ["10.8.2.100"]
     tags = { OWNER = "user@company.com", APPLICATION = "PROD", ENVIRONMENT = "Production", DEPARTMENT = "Engineering", CRITICALITY = "High", PROJECT = "IT", DATA_CLASSIFICATION = "Internal", MANAGED_BY = "CloudTeam", COMPLIANCE = "UAE IA", COST_CENTER = "TAH-001" }

     subnets = {
       SNET-TAH-UAEN-PROD-AKS-01  = { address_prefixes = ["10.8.8.0/24"] }
       SNET-TAH-UAEN-PROD-SQLMI-01 = { address_prefixes = ["10.8.9.0/26"] }
       SNET-TAH-UAEN-PROD-PEP-01 = { address_prefixes = ["10.8.9.64/27"] }
       SNET-TAH-UAEN-PROD-PGSQL-01   = { address_prefixes = ["10.8.9.128/26"] }
       SNET-TAH-UAEN-MAESTRO-PROD-AKS-01 = { address_prefixes = ["10.8.10.0/24"] }
       SNET-TAH-UAEN-MAESTRO-PROD-SQLMI-01 = { address_prefixes = ["10.8.11.0/26"] }
       SNET-TAH-UAEN-MAESTRO-PROD-PEP-01 = { address_prefixes = ["10.8.11.64/27"] }
       SNET-TAH-UAEN-MAESTRO-PROD-PGSQL-01   = { address_prefixes = ["10.8.11.128/26"] }
       SNET-TAH-UAEN-PROD-VM-01 = { address_prefixes = ["10.8.9.96/27"] }
     }
   }
 }

 vnets_nonprod = {
   nonprod = {
     vnet_name     = "VNET-TAH-UAEN-NONPROD-01"
     rg_key        = "nonprod_nw"
     location      = "UAE North"
     address_space = ["10.8.16.0/21"]
     dns_servers   = ["10.8.2.100"]
     tags = { OWNER = "user@company.com", APPLICATION = "NONPROD", ENVIRONMENT = "Non-Production", DEPARTMENT = "Engineering", CRITICALITY = "High", PROJECT = "IT", DATA_CLASSIFICATION = "Internal", MANAGED_BY = "CloudTeam", COMPLIANCE = "UAE IA", COST_CENTER = "TAH-001" }

     subnets = {
       SNET-TAH-UAEN-MAESTRO-NONPROD-AKS-01  = { address_prefixes = ["10.8.16.0/24"] }
       SNET-TAH-UAEN-MAESTRO-NONPROD-SQLMI-01   = { address_prefixes = ["10.8.17.0/26"] }
       SNET-TAH-UAEN-MAESTRO-NONPROD-PEP-01 = { address_prefixes = ["10.8.17.64/27"] }
       SNET-TAH-UAEN-MAESTRO-NONPROD-PGSQL-01   = { address_prefixes = ["10.8.17.128/26"] }
       SNET-TAH-UAEN-DEV-AKS-01  = { address_prefixes = ["10.8.18.0/24"] }
       SNET-TAH-UAEN-DEV-SQLMI-01   = { address_prefixes = ["10.8.19.0/26"] }
       SNET-TAH-UAEN-DEV-PEP-01 = { address_prefixes = ["10.8.19.64/27"] }
       SNET-TAH-UAEN-DEV-PGSQL-01   = { address_prefixes = ["10.8.19.128/26"] }
       SNET-TAH-UAEN-QA-AKS-01 = { address_prefixes = ["10.8.20.0/24"] }
       SNET-TAH-UAEN-QA-SQLMI-01   = { address_prefixes = ["10.8.21.0/26"] }
       SNET-TAH-UAEN-QA-PEP-01 = { address_prefixes = ["10.8.21.64/27"] }
       SNET-TAH-UAEN-QA-PGSQL-01   = { address_prefixes = ["10.8.21.128/26"] }
       SNET-TAH-UAEN-STAGE-AKS-01= { address_prefixes = ["10.8.22.0/24"] }
       SNET-TAH-UAEN-STAGE-SQLMI-01   = { address_prefixes = ["10.8.23.0/26"] }
       SNET-TAH-UAEN-STAGE-PEP-01 = { address_prefixes = ["10.8.23.64/27"] }
       SNET-TAH-UAEN-STAGE-PGSQL-01   = { address_prefixes = ["10.8.23.128/26"] }
       SNET-TAH-UAEN-NONPROD-VM-01 = { address_prefixes = ["10.8.17.96/27"] }
     }
   } 
 }
  
vnets_security = {
  security = {
    vnet_name     = "VNET-TAH-UAEN-SEC-01"
    rg_key        = "sec_nw"
    location      = "UAE North"
    address_space = ["10.8.6.0/25"]
    dns_servers   = ["10.8.2.100"]
    tags = { OWNER = "user@company.com", APPLICATION = "SEC", ENVIRONMENT = "Production", DEPARTMENT = "Engineering", CRITICALITY = "High", PROJECT = "IT", DATA_CLASSIFICATION = "Internal", MANAGED_BY = "CloudTeam", COMPLIANCE = "UAE IA", COST_CENTER = "TAH-001" }

    subnets = {
      SNET-TAH-UAEN-SEC-PEP-01 = { address_prefixes = ["10.8.6.0/27"] }
    }
  }
}

vnets_dr = {
  dr = {
    vnet_name     = "VNET-TAH-UAEN-DR-01"
    rg_key        = "dr_nw"
    location      = "UAE North"
    address_space = ["10.8.7.0/24"]
    dns_servers   = ["10.8.2.100"]
    tags = { OWNER = "user@company.com", APPLICATION = "DR", ENVIRONMENT = "DR", DEPARTMENT = "Engineering", CRITICALITY = "High", PROJECT = "IT", DATA_CLASSIFICATION = "Internal", MANAGED_BY = "CloudTeam", COMPLIANCE = "UAE IA", COST_CENTER = "TAH-001" }

    subnets = {
      SNET-TAH-UAEN-DR-VM-01  = { address_prefixes = ["10.8.7.0/26"] }
      SNET-TAH-UAEN-DR-PE-01  = { address_prefixes = ["10.8.7.64/27"] }
    }
  }
}

vnets_sandbox = {
  sandbox = {
    vnet_name     = "VNET-TAH-UAEN-SANDBOX-01"
    rg_key        = "sandbox_nw"
    location      = "UAE North"
    address_space = ["10.8.26.0/24"]
    dns_servers   = ["10.8.2.100"]
    tags = { OWNER = "user@company.com", APPLICATION = "SANDBOX", ENVIRONMENT = "Development", DEPARTMENT = "Engineering", CRITICALITY = "High", PROJECT = "IT", DATA_CLASSIFICATION = "Internal", MANAGED_BY = "CloudTeam", COMPLIANCE = "UAE IA", COST_CENTER = "TAH-001" }

    subnets = {
      SNET-TAH-UAEN-SANDBOX-01  = { address_prefixes = ["10.8.26.0/27"] }
    }
  }
}


############vnet peering parameters#############

peerings_mgmt = {
  peering1 = {
    hub_vnet_key      = "hub",
    hub_vnet_rg_key   = "hub_nw",
    spoke_vnet_key    = "mgmt",
    spoke_vnet_rg_key = "mgmt_nw",
  }
}
peerings_identity = {
  peering1 = {
    hub_vnet_key      = "hub",
    hub_vnet_rg_key   = "hub_nw",
    spoke_vnet_key    = "identity",
    spoke_vnet_rg_key = "identity_nw",
  }
}

peerings_prod = {
  peering1 = {
    hub_vnet_key      = "hub",
    hub_vnet_rg_key   = "hub_nw",
    spoke_vnet_key    = "prod",
    spoke_vnet_rg_key = "prod_nw",
  }
}

peerings_nonprod = {
  peering1 = {
    hub_vnet_key      = "hub",
    hub_vnet_rg_key   = "hub_nw",
    spoke_vnet_key    = "nonprod",
    spoke_vnet_rg_key = "nonprod_nw",
  }
}

peerings_dr = {
  peering1 = {
    hub_vnet_key      = "hub",
    hub_vnet_rg_key   = "hub_nw",
    spoke_vnet_key    = "dr",
    spoke_vnet_rg_key = "dr_nw",
  }
}

peerings_security = {
  peering1 = {
    hub_vnet_key      = "hub",
    hub_vnet_rg_key   = "hub_nw",
    spoke_vnet_key    = "security",
    spoke_vnet_rg_key = "sec_nw",
  }
}

peerings_hubnonprod = {
  peering1 = {
    hub_vnet_key      = "hub",
    hub_vnet_rg_key   = "hub_nw",
    spoke_vnet_key    = "hubnonprod",
    spoke_vnet_rg_key = "hubnonprod_nw",
  }
}

##################storage account parameters#############
storage_accounts_mgmt = {
  sa_core = {
    name                     = "sttahuaenmgmt01" # globally unique, 3–24 lowercase alnum
    rg_key                   = "mgmt_infra"
    location                 = "UAE North"
    account_tier             = "Standard"
    account_replication_type = "LRS"
    tags = { OWNER = "user@company.com", APPLICATION = "MGMT", ENVIRONMENT = "Production", DEPARTMENT = "Engineering", CRITICALITY = "High", PROJECT = "IT", DATA_CLASSIFICATION = "Internal", MANAGED_BY = "CloudTeam", COMPLIANCE = "UAE IA", COST_CENTER = "TAH-001" }

    law_key = "law_soc"
    private_endpoint = {
      vnet_key                 = "vnets_mgmt"
      subnet_name              = "SNET-TAH-UAEN-MGMT-PEP-01"
      create_private_dns_zones = true
    }
  }
}

#############virtual network gateway parameters#############

lng_name            = "LGW-TAH-UAEN-HUB-01"
lng_rg_name         = "RG-TAH-UAEN-HUB-NW-01"
lng_location        = "UAE North"
lng_gateway_address = "203.0.113.10"        # on-prem public IP
lng_address_space   = ["10.0.0.0/16","172.16.0.0/16"] 

lng_tags = { OWNER = "user@company.com", APPLICATION = "VGW", ENVIRONMENT = "Production", DEPARTMENT = "Engineering", CRITICALITY = "High", PROJECT = "IT", DATA_CLASSIFICATION = "Internal", MANAGED_BY = "CloudTeam", COMPLIANCE = "UAE IA", COST_CENTER = "TAH-001" }

vgw_pip_name             = "PIP-TAH-UAEN-VGW-01"
vgw_rg_name              = "RG-TAH-UAEN-HUB-NW-01"
vgw_vnet_name            = "VNET-TAH-UAEN-HUB-01"
vgw_subnet_name          = "GatewaySubnet" # must match one of the subnets in the hub VNet
vgw_subnet_address_space = ["10.8.1.128/26"] # must match GatewaySubnet
vgw_rg_location          = "UAE North"

vgw_allocated-pip_method = "Static"
vgw_pip_sku              = "Standard"

vgw_name = "VGW-TAH-UAEN-HUB-01"
vgw_sku  = "VpnGw2AZ"

vgw_tags = { OWNER = "user@company.com", APPLICATION = "VGW", ENVIRONMENT = "Production", DEPARTMENT = "Engineering", CRITICALITY = "High", PROJECT = "IT", DATA_CLASSIFICATION = "Internal", MANAGED_BY = "CloudTeam", COMPLIANCE = "UAE IA", COST_CENTER = "TAH-001" }

connection_name           = "Tahaluf-HO-Connection"
connection_sharedkey   = "YourSharedKey123" # must be at least 8 characters, used for on-prem VPN device configuration

connection_tags = { OWNER = "user@company.com", APPLICATION = "VGW", ENVIRONMENT = "Production", DEPARTMENT = "Engineering", CRITICALITY = "High", PROJECT = "IT", DATA_CLASSIFICATION = "Internal", MANAGED_BY = "CloudTeam", COMPLIANCE = "UAE IA", COST_CENTER = "TAH-001" }
