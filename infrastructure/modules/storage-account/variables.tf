variable "rg_name" {
  type        = string
  description = "Resource group name"
}

variable "location" {
  type        = string
  description = "Location of the resource group"
}

variable "hns_enabled" {
  type        = bool
  description = "Hierarchical namespaces enabled/disabled"
  default     = false
}



