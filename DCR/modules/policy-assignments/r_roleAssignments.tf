 
resource "azurerm_role_assignment" "DCR_governance" {
  scope                            = data.azurerm_subscription.current.id
  role_definition_name             = "Contributor"
  principal_id                     = azurerm_subscription_policy_assignment.DCR_governance.identity[0].principal_id
  skip_service_principal_aad_check = true
}