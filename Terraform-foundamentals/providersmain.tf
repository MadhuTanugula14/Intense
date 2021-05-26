# Providers

DATACENTER on AWS -> VPC -> SUBNETS -> INSTANCES

a) Terraform used plugins called "providers" to interact with real world.
b) You must declare which provider you may require in the terraform configuration file.
c) Terraform then installs and uses these provider plugins.
d) provider adds a set of resource_types or data sources that terraform can manage.
e) Every resource_type is implemented by a provider. 
f) With out provider Terraform will be unable to manage your infrastructure.
g) Terraform registry (main directory of publicly available Terraform providers)
   has the list of available providers.
   https://registry.terraform.io/browse/providers


# Provider Requirement : How to declare providers so Terraform can install them.

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws" # Shortcut of https://registry.terraform.io/providers/hashicorp/aws/latest
      version = "~> 3.0"
    }
  }
}

# Provider Configuration : Configure the AWS Provider
provider "aws" {
  //configuration arguments for the provider.
  region = "us-east-1"
  access_key = "my-access-key"
  secret_key = "my-secret-key"
}
