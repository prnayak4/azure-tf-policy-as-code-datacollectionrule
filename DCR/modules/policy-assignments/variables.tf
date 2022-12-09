data "azurerm_subscription" "current" {
}
 

variable "DCR_governance_policyset_id" {
  type        = string
  description = "The policy set definition id for DCR_governance"
}

