locals {
   WindowsDRCRId = var.WindowsDRCRId
   LinuxDRCRId = var.LinuxDRCRId
}

module "policyset_definitions" {
  source = "git::https://github.kyndryl.net/us-cloud-practice/cloudops-azure-tf-policy-as-code-datacollectionrule.git"
   WindowsDRCRId = var.WindowsDRCRId
   LinuxDRCRId = var.LinuxDRCRId
}
