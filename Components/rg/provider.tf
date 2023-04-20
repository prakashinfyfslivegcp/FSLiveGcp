terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }

 backend "azurerm" {
    subscription_id = "fdb651cb-6a0b-4cb2-a0c7-cd269d33daac"
    tenant_id       = "71c5ee25-c469-4933-aaac-b788f5880300"
    client_id       = "ff743763-c354-46a5-9d8e-1b400da65a1b"
    client_secret   = "Mw68Q~~GcbFRnp5yl9cWqFUyLF4dBB-5apjHibBf"

    resource_group_name  = "fsl-manual-pre-requisites"
    storage_account_name = "fslivetfstate" //need to change
    container_name       = "fslive-dev-si-cr-tfstate-00"
    key                  = "rg.tfstate"
  }
}

provider "azurerm" {
  features {}

    subscription_id = "fdb651cb-6a0b-4cb2-a0c7-cd269d33daac"
    tenant_id       = "71c5ee25-c469-4933-aaac-b788f5880300"
    client_id       = "ff743763-c354-46a5-9d8e-1b400da65a1b"
    client_secret   = "Mw68Q~~GcbFRnp5yl9cWqFUyLF4dBB-5apjHibBf"
}