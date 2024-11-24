resource "aws_route_table" "main" {
    vpc_id = var.vpc_id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = var.gateway_id
    }
}

resource "aws_route_table_association" "a" {
    subnet_id = var.subnet_map[1]
    route_table_id = aws_route_table.main.id
}

resource "aws_route_table_association" "c" {
    subnet_id = var.subnet_map[2]
    route_table_id = aws_route_table.main.id
}
