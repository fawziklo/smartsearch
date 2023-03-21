resource "azurerm_search_service" "search_engine" {
  name                = "smart-search-service"
  resource_group_name      = var.rg_name 
  location                 = var.location  
  sku                 = "standard"
}