terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.3.0"
    }
  }
}

provider "azurerm" {
  features {

  }
}

resource "azurerm_resource_group" "demo_rg" {
  name     = var.rgname
  location = var.location
  tags = var.tags
}
resource "azurerm_storage_account" "stoacctdemo" {
  name                     = var.stgactname
  resource_group_name      = azurerm_resource_group.demo_rg.name
  location                 = azurerm_resource_group.demo_rg.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
  tags = var.tags
}