provider "azurerm" {

  subscription_id = "56dde8a4-32cb-49cf-a313-2fd4c4fda823"
  client_id = "57bb72a3-a72e-4f47-8175-44b8efcdd564"
  client_secret = "pRN8Q~t.aYsRVYPmu2X2Tjh6GqiG9FymiHDMjcT-"
  tenant_id = "b1eae7fc-b9a9-4035-83c3-baa3e2d6059e"
  features {
    
  }
}

resource "azurerm_virtual_network" "vnet" {
  name = var.vnet_name
  location = var.rg_location
  resource_group_name = var.rg_name
  address_space = ["10.63.0.0/16"]
}