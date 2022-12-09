 
 
resource "azurerm_policy_set_definition" "DCR_governance" {

  name         = "DCR_governance"
  policy_type  = "Custom"
  display_name = "DCR Monitoring Agent Governance"
  description  = "Contains common DCR Monitoring Agent policies"
 
 

#######################################################################Linux#######################################################
  policy_definition_reference {
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/a4034bc6-ae50-406d-bf76-50f4ee5a7811"
    reference_id         = "Configure Linux virtual machines to run Azure Monitor Agent with system-assigned managed identity-based authentication"
  }

  policy_definition_reference {
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/2ea82cdd-f2e8-4500-af75-67a2e084ca74"
    reference_id         = "Configure Linux Machines to be associated with a Data Collection Rule or a Data Collection Endpoint"
    parameter_values = jsonencode(
      {
        "dcrResourceId" : { value = "${var.LinuxDRCRId}" }
      }
    )
  }

 
 policy_definition_reference {
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/56a3e4f8-649b-4fac-887e-5564d11e8d3a"
    reference_id         = "Configure Linux virtual machine scale sets to run Azure Monitor Agent with system-assigned managed identity-based authentication"
  }


 policy_definition_reference {
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/845857af-0333-4c5d-bbbc-6076697da122"
    reference_id         = "Configure Linux Arc-enabled machines to run Azure Monitor Agent"
  }
   
  
 
 #######################################################################Windows#######################################################
  policy_definition_reference {
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/ca817e41-e85a-4783-bc7f-dc532d36235e"
    reference_id         = "Configure Windows virtual machines to run Azure Monitor Agent using system-assigned managed identity"
  }

  policy_definition_reference {
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/eab1f514-22e3-42e3-9a1f-e1dc9199355c"
    reference_id         = "Configure Windows Machines to be associated with a Data Collection Rule or a Data Collection Endpoint"
    parameter_values = jsonencode(
      {
        "dcrResourceId" : { value = "${ var.WindowsDRCRId}" }
      }
    )
  }
   policy_definition_reference {
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/4efbd9d8-6bc6-45f6-9be2-7fe9dd5d89ff"
    reference_id         = "Configure Windows virtual machine scale sets to run Azure Monitor Agent using system-assigned managed identity"
  }
   policy_definition_reference {
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/94f686d6-9a24-4e19-91f1-de937dc171a4"
    reference_id         = "Configure Windows Arc-enabled machines to run Azure Monitor Agent"
  }
  
}


#"dcrResourceId" : { value = "/subscriptions/343c17eb-34b6-4481-92a2-a0a5a04bdd88/resourceGroups/rg-devtest-001/providers/Microsoft.Insights/dataCollectionRules/dcr-rule-linux-ama-agentpoc" 
# "dcrResourceId" : { value = "/subscriptions/343c17eb-34b6-4481-92a2-a0a5a04bdd88/resourceGroups/rg-devtest-001/providers/Microsoft.Insights/dataCollectionRules/dcr-rule-win-ama-agentpoc"
