 
output "DCR_governance_assignment_id" {
  value       = azurerm_subscription_policy_assignment.DCR_governance.id
  description = "The policy assignment id for DCR_governance_prod"
}

output "DCR_governance_assignment_identity" {
  value       = azurerm_subscription_policy_assignment.DCR_governance.identity
  description = "The policy assignment identity for DCR_governance"
}