# Provision VPC Resource

resource "aws_vpc" "Terraformlab-vpc" {
  cidr_block = var.cidr_block_from_variablesfile

  tags = {
    Name = "Terraformlab-VPC"
  }
}