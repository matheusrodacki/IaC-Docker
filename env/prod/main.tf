module "production" {
  source = "../../infra"

  name = "prod"
  description = "production-application"
  max = 5
  instance = "t2.micro"
  env = "production-environment"
}