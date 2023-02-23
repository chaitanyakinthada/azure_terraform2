provider "azurerm" {

  subscription_id = "56dde8a4-32cb-49cf-a313-2fd4c4fda823"
  client_id = "57bb72a3-a72e-4f47-8175-44b8efcdd564"
  client_secret = "pRN8Q~t.aYsRVYPmu2X2Tjh6GqiG9FymiHDMjcT-"
  tenant_id = "b1eae7fc-b9a9-4035-83c3-baa3e2d6059e"
  features {
    
  }
}

module "dev" {
  source = "./dev"
  prefix = "devmod"
}

module "vm" {
  source = "./vm"
  prefix = "vmmod"
  out_public_ip = module.dev.out_public_ip
  rgname = module.dev.rgname
  rglocation = module.dev.rglocation
  subnetid = module.dev.subnetid
}