terraform {
  backend "s3" {
    bucket = "terraform-state-mrf"
    key    = "prod/terraform.tfstate"
    region = "sa-east-1"
  }
}
