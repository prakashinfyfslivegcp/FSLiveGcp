terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }

 backend "azurerm" {
    resource_group_name  = "fsl-manual-pre-requisites"
    storage_account_name = "fslivetfstate" //need to change
    container_name       = "fslive-dev-si-cr-tfstate-00"
    key                  = "rg.tfstate"
  }
}

provider "azurerm" {
  features {}

}