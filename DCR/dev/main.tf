

module "policy_assignments" {
  source                      = "../modules/policy-assignments"
  DCR_governance_policyset_id = module.policyset_definitions.DCR_governance_policyset_id
}



module "policyset_definitions" {
  source        = "../modules/policyset-definitions"
  WindowsDRCRId = var.WindowsDRCRId
  LinuxDRCRId   = var.LinuxDRCRId

}