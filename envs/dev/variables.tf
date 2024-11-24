variable "vpc" {
    type = map(string)
    default = {
        cidr_block = "10.0.0.0/24"
    }
}

variable "subnet" {
    type = map(map(string))
    default = {
        "1a" = {
            cidr = "10.0.0.0/27"
        }
        "1c" = {
            cidr = "10.0.0.32/27"
        }
    }
}
