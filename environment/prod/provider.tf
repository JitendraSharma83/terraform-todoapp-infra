terraform {
  backend "azurerm" {
    resource_group_name  = "tfstate-rg"
    storage_account_name = "sgstatefile123"
    container_name       = "jitu"
    key                  = "prod.tfstate"
  }
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.36.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "76095b6e-0585-402e-8e43-281835aebfd1"
}

