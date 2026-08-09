rgs = {

  rg1 = {

    name     = "shri1"
    location = "centralindia"
  }
}

vnet = {

  vnet1 = {

    name                = "vnet1"
    location            = "centralindia"
    resource_group_name = "shri"
    address_space       = ["10.0.0.0/16"]
  }
}

subnet = {

  subnet1 = {
    name                 = "frontend"
    resource_group_name  = "shri1"
    virtual_network_name = "vnet1"
    address_prefixes     = ["10.0.1.0/24"]
  }
  subnet2 = {
    name                 = "backend"
    resource_group_name  = "shri1"
    virtual_network_name = "vnet1"
    address_prefixes     = ["10.0.2.0/24"]
  }
}

pubip = {
  pubip1 = {

    name                = "Pubip-frontend"
    resource_group_name = "shri1"
    location            = "centralindia"
    allocation_method   = "Static"
  }
}

nic = {

  nic1 = {

    name                          = "nic1"
    location                      = "centralindia"
    resource_group_name           = "shri1"
    subnet_name                   = "frontend"
    virtual_network_name          = "vnet1"
    pubip_name                    = "Pubip-frontend"
    ip_cofig_name                 = "internal"
    private_ip_address_allocation = "Dynamic"

  }
}
