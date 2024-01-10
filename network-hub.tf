
resource "azurerm_resource_group" "tf-rg-network-hub" {
  name     = "RG_Network-Hub"
  location = "West Europe"
  provider = azurerm.PAYG2
}



resource "azurerm_virtual_network" "tf-vnet-hub" {
  name                = "Vnet-Hub"
  resource_group_name = azurerm_resource_group.tf-rg-network-hub.name
    location            = azurerm_resource_group.tf-rg-network-hub.location
  address_space       = ["10.0.0.0/16"]
provider = azurerm.PAYG2

  subnet {
    name           = "GatewaySunet"
    address_prefix = "10.0.0.0/26"
  }

  subnet {
    name           = "AzureFirewallSubnet"
    address_prefix = "10.0.0.64/26"

  }
    subnet {
    name           = "AzureBastionSubnet"
    address_prefix = "10.0.0.128/26"
  }
}