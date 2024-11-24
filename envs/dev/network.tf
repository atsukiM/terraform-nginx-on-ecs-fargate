module "vpc" {
    source = "../../modules/vpc"

    cidr_block = var.vpc.cidr_block
}