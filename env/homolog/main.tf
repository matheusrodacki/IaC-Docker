module "homologation" {
  source = "../../infra"

  name = "app-homolog"
  description = "homologation-application"
  max = 3
  instance = "t2.micro"
  env = "homologation-environment"
}