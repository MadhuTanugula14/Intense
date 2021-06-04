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

module "vpc" {
  source = "./modules/VPC"
  cidr_block_from_variablesfile = var.cidr
}

module "subnet" {
  source = "./modules/Subnet"
  vpc_id_from_vpcmodule = module.vpc.vpc_id_from_vpcmodule
  cidr_subnet_from_variablesfile = var.cidr_subnet1
}