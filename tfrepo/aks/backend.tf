terraform {
  backend "azurerm" {
    resource_group_name  = "tf-state"
    storage_account_name = "azdevopsfeb2026tfstatesa"
    container_name       = "tfstate"
    key                  = "tfdemo.terraform.tfstate"
  }
}
