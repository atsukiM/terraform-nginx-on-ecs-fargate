module "vpc" {
  source = "../../modules/vpc"

  cidr_block = var.vpc.cidr_block
}

module "subnet" {
  source = "../../modules/subnet"

  subnet = var.subnet

  vpc_id = module.vpc.vpc_id
}

module "internet_gateway" {
  source = "../../modules/internet_gateway"

  vpc_id = module.vpc.vpc_id
}

module "route_table" {
  source = "../../modules/route_table"

  vpc_id = module.vpc.vpc_id
  subnet_map = module.subnet.subnet_map
  gateway_id = module.internet_gateway.gateway_id
}
