terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.75.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "StorageRG"
    storage_account_name = "taskboardstoragemero5"
    container_name       = "taskboardcontainer"
    key                  = "terraform.tfstate"
  }
}