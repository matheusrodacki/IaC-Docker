module "homologation" {
  source = "../../Infra"

  name = "App-Homolog"
  description = "Homologation-Application"
  max = 3
  instance = "t2.micro"
  env = "Homologation-Environment"
}