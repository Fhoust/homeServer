terraform {
    required_version = ">= 0.12"

    backend "s3" {
        bucket  = "terraform-tf-states"
        key     = "tfstates/home-automation/home-server.tfstate"
        region  = "us-east-1"
        profile = "home-server"
    }
}