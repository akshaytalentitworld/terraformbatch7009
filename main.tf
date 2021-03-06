resource "aws_subnet" "ProductSubnetPrivate"{
	vpc_id = "vpc-01984fa4eb6dde5fd"
	cidr_block = var.private_subnet_cidr
	tags = {
	    Name = var.product_name,
	    Env  = var.env
	    ManagedBy = "Terraform"
	    Product_cat = "Shopping"
	    BatchNO   = "7009"
	}
	availability_zone = "us-east-2b"
}

variable "private_subnet_cidr"{
	default = "10.100.2.0/24"
}
variable "product_name"{
	default = "myntra"
}
variable "env"{
	default = "dev"
}
