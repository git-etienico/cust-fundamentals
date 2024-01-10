
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.41.0"
    }
  }
}

provider "azurerm" {
  features {}
}


provider "azurerm" {
  subscription_id = "488c618c-643c-458d-9aed-4f25c42a228e"
  features {}
  alias = "PAYG1"


}

provider "azurerm" {
  subscription_id = "e35e83f3-804d-4b10-9127-84d2715a3a82"
  features {}
  alias = "PAYG2"
}

