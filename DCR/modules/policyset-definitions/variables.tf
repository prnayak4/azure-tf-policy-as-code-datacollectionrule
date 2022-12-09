 
variable "policyset_definition_category" {
  type        = string
  description = "The category to use for all PolicySet defintions"
  default     = "Custom"
}
 
 

variable "custom_policies_logging_governance" {
  type        = list(map(string))
  description = "List of custom policy definitions for the logging_governance policyset"
  default     = []
}
  

 variable "WindowsDRCRId" {} 
 variable "LinuxDRCRId" {} 