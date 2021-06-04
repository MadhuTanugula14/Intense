terraform {
  backend "remote" {
    organization = "VinaysTerraformLab"

    workspaces {
      name = "TerraformLab"
    }
  }
}