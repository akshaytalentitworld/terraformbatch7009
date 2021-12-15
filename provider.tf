provider "aws" {
  region = "us-east-2"
}

#PULL
#data "terraform_remote_state" "network" {
#  backend = "s3"
#  config = {
#    bucket = "batch7009-terraform-state"
#    key    = "aws/vpc/myntra"
#    region = "us-east-2"
#  }
#}

#PUSH
terraform {
  backend "s3" {
    bucket = "batch7009-terraform-state"
    key    = "aws/subnet/myntra"
    region = "us-east-2"
  }
}
