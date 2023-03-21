
module "resource_group" {
  source = "./modules/resource-group"

  name     = var.name
  location = var.location

}

module "storage_account_aml" {
  source = "./modules/storage-account"

  rg_name  = module.resource_group.name
  location = module.resource_group.location

  hns_enabled                         = false

}

module "cognitive_search_enginer" {
  source = "./modules/cognitive_search"
  
  rg_name  = module.resource_group.name
  location = module.resource_group.location

}

module "cognitive_services_app" {
  source = "./modules/cognitive_services"
  
  rg_name  = module.resource_group.name
  location = module.resource_group.location

}


module "web_app_service" {
  source = "./modules/web_app_service"
  
  rg_name  = module.resource_group.name
  location = module.resource_group.location

}