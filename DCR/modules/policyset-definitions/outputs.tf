 
output "DCR_governance_policyset_id" {
  value       = azurerm_policy_set_definition.DCR_governance.id
  description = "The policy set definition id for DCR_governance"
}