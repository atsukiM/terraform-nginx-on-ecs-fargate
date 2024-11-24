module "vpc" {
    source = "../../modules/vpc"

    cidr_block = var.vpc.cidr_block
}

module "subnet" {
    source  = "../../modules/subnet"

    subnet = var.subnet

    vpc_id = module.vpc.vpc_id
}

