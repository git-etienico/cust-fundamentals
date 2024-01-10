
resource "azurerm_resource_group" "tf-rg-network-spoke" {
  name     = "RG_Network-spoke"
  location = "West Europe"
  provider = azurerm.PAYG2
}



resource "azurerm_virtual_network" "tf-vnet-spoke" {
  name                = "Vnet-Spoke"
  resource_group_name = azurerm_resource_group.tf-rg-network-spoke.name
    location            = azurerm_resource_group.tf-rg-network-spoke.location
  address_space       = ["172.16.0.0/16"]
  provider = azurerm.PAYG2


  subnet {
    name           = "SNET-DC"
    address_prefix = "172.16.0.0/26"
  }

  subnet {
    name           = "SNET-Windows"
    address_prefix = "172.16.1.0/24"

  }
    subnet {
    name           = "SNET-Linux"
    address_prefix = "172.16.2.0/24"
  }
}