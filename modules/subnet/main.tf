resource "aws_subnet" "public" {
  for_each = var.subnet

  vpc_id            = var.vpc_id
  cidr_block        = each.value["cidr"]
  availability_zone = each.value["az"]
}