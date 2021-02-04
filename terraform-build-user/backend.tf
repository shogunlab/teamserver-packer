terraform {
  backend "s3" {
    encrypt        = true
    bucket         = "cisa-cool-terraform-state"
    dynamodb_table = "terraform-state-lock"
    profile        = "cool-terraform-backend"
    region         = "us-east-1"
    key            = "teamserver-packer/terraform-build-user.tfstate"
  }
}