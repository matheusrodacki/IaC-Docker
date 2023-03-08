terraform {
  backend "s3" {
    bucket = "terraform-state-mrf"
    key    = "prod/terraform.tfstate"
    region = "us-west-2"
  }
}
