variable "WindowsDRCRId" {
  type        = string
  description = "Please Provide the Windows DCR Rule ID"
  nullable    = false
  default     = "/subscriptions/343c17eb-34b6-4481-92a2-a0a5a04bdd88/resourceGroups/rg-devtest-001/providers/Microsoft.Insights/dataCollectionRules/dcr-rule-win-ama-agentpoc"
}
variable "LinuxDRCRId" {
  type        = string
  description = "Please Provide the Linux DCR Rule ID"
  nullable    = false
  default     = "/subscriptions/343c17eb-34b6-4481-92a2-a0a5a04bdd88/resourceGroups/rg-devtest-001/providers/Microsoft.Insights/dataCollectionRules/dcr-rule-linux-ama-agentpoc"
}