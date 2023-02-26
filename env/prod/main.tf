module "production" {
  source = "../../Infra"

  name = "app-Prod"
  description = "production-application"
  max = 5
  instance = "t2.micro"
  env = "production-environment"
}