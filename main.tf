variable "cloudflare_api_token" {}

provider "cloudflare" {
  api_token = var.cloudflare_api_token
}

terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4.9"
    }
  }
  required_version = ">= 0.14"
}

data "cloudflare_accounts" "example" {
  name = "example account"
}
