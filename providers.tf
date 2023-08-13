terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.69.0"
    }
  }
  backend "git" {
    repository = "https://github.com/xesgithub/basic-infra-module.git"
    branch     = "main"
  }
}
