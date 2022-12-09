terraform {
  # backend "remote" {}
  required_version = ">= 0.13"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "> 2.0"
    }
  }
}

provider "azurerm" {
  skip_provider_registration = true
  features {}
}

module "policy_assignments" {
  source                      = "./modules/policy-assignments"
  DCR_governance_policyset_id = module.policyset_definitions.DCR_governance_policyset_id
}



module "policyset_definitions" {
  source        = "./modules/policyset-definitions"
  WindowsDRCRId = var.WindowsDRCRId
  LinuxDRCRId   = var.LinuxDRCRId

}