terraform {
  required_version = ">= 1.5.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 4.38.1"
    }
  }
  backend "azurerm" {
  }
}

provider "azurerm" {
  alias           = "hub"
  subscription_id = var.hub_subscription_id
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}
provider "azurerm" {
  alias           = "hubnonprod"
  subscription_id = var.hubnonprod_subscription_id
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}
provider "azurerm" {
  alias           = "identity"
  subscription_id = var.identity_subscription_id
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}

provider "azurerm" {
  alias           = "nonprod"
  subscription_id = var.nonprod_subscription_id
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}

provider "azurerm" {
  alias           = "prod"
  subscription_id = var.prod_subscription_id
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}
provider "azurerm" {
  alias           = "mgmt"
  subscription_id = var.mgmt_subscription_id
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}
provider "azurerm" {
  alias           = "security"
  subscription_id = var.security_subscription_id
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}
provider "azurerm" {
  alias           = "dr"
  subscription_id = var.prod_subscription_id
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}

provider "azurerm" {
  alias           = "sandbox"
  subscription_id = var.sandbox_subscription_id
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}