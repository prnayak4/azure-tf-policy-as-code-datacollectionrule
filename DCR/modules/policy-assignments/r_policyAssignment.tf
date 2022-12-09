resource "azurerm_subscription_policy_assignment" "DCR_governance" {
  name                 = "DCR_governance"
  subscription_id      = data.azurerm_subscription.current.id
  policy_definition_id = var.DCR_governance_policyset_id
  description          = "Assignment of the DCR Governance initiative to subscription."
  display_name         = "DCR Governance"
  location             = "eastus"
  identity { type = "SystemAssigned" }
}