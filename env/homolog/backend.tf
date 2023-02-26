terraform {
  backend "s3" {
    bucket = "terraform-state-mrf"
    key    = "homlog/terraform.tfstate"
    region = "sa-east-1"
  }
}
