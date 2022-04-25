module "vpc" {
  source      = "./modules/vpc"
  project     = var.project
  vpc_name    = var.vpc_name
  auto_mode   = false
  subnet_name = var.subnet_name
  region      = var.region
  cidr        = var.cidr
}

module "ce" {
  source         = "./modules/ce"
  project        = var.project
  instance_name  = var.instance_name
  region         = var.region
  zone           = var.zone
  instance_type  = var.instance_type
  instance_image = var.instance_image
  subnet_id      = module.vpc.subnet_id
  instance_ip    = var.instance_ip
}
