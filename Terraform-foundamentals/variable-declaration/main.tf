# Provider Requirement : How to declare providers so Terraform can install them.

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws" 
      version = "~> 3.0"
    }
  }
}

# Provider Configuration : Configure the AWS Provider

provider "aws" {
  //configuration arguments for the provider.
  region = "us-east-2"
}

# Provision VPC Resource

resource "aws_vpc" "Terraform-VPC" {
  cidr_block = var.cidr
  
  tags = {
    Name = "Terraform-VPC"
    VPC_Name = var.vpc_name
    VPC_Number = var.vpc_number
    VPC_Exists = var.vpc_exists
    VPC_List = var.vpc_list[1]
    VPC_Map = var.vpc_map["Key2"]
    VPC_TUPLE = var.vpc_tuple[1]
    VPC_OBJECT = var.vpc_object["Key2"]
  }

}

