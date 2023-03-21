
resource "azurerm_storage_account" "st_account" {
  name                     = "stdbsearch78"
  resource_group_name      = var.rg_name 
  location                 = var.location  
  account_tier             = "Standard"
  account_replication_type = "LRS"
  is_hns_enabled           = false

}

resource "azurerm_storage_container" "st_countainer" {
  name                  = "content"
  storage_account_name  = azurerm_storage_account.st_account.name
  
  container_access_type = "container"
}