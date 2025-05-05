provider "azurerm" {
  features {}
  subscription_id = "7d58fd8a-e8be-4f50-b9f6-03616700d9fc"
}

resource "azurerm_storage_account" "tfstate" {
  name                     = "apps11tfstate"
  resource_group_name      = "project-1"
  location                 = "UK West"
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

resource "azurerm_storage_container" "tfstates" {
  name                  = "roboshop-state-files"
  storage_account_id    = azurerm_storage_account.tfstate.id
  container_access_type = "private"
}
