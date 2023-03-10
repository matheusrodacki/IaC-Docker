terraform {
  backend "s3" {
    bucket = "terraform-state-mrf1"
    key    = "prod/terraform.tfstate"
    region = "us-west-2"
  }
}
