resource "azurerm_cognitive_account" "cognitive_services" {
  name                = "cognitive-services-125"
  location            = var.location
  resource_group_name = var.rg_name
  kind                = "CognitiveServices"

  sku_name = "S0"
}