provider "azurerm" {
  features {}
  subscription_id = "7d58fd8a-e8be-4f50-b9f6-03616700d9fc"
}


terraform {
  backend "azurerm" {
    subscription_id      = "7d58fd8a-e8be-4f50-b9f6-03616700d9fc"
    resource_group_name  = "project-1"
    storage_account_name = "apps11tfstate"
    container_name       = "roboshop-state-files"
    key                  = "tools.terraform.tfstate"
  }
}