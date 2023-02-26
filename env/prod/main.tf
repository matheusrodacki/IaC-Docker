module "Producao" {
  source = "../../Infra"

  name = "App-Prod"
  description = "Production-Application"
  max = 5
  instance = "t2.micro"
  env = "Production-Environment"
}