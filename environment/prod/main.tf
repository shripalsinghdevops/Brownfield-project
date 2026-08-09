module "rgs" {
  source = "../../modules/1-RG"
  rgs    = var.rgs
}

module "vnet" {
  source     = "../../modules/2-VNET"
  depends_on = [module.rgs]
  vnet       = var.vnet

}
module "subnet" {
  source     = "../../modules/3-SUBNET"
  subnet     = var.subnet
  depends_on = [module.vnet]

}
module "pubip" {
  source     = "../../modules/4-PUBIP"
  pubip      = var.pubip
  depends_on = [module.rgs]

}
module "nic" {
  source = "../../modules/5-NIC"
  nic    = var.nic

  depends_on = [module.rgs, module.subnet]
}