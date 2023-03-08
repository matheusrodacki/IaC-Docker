module "production" {
  source = "../../infra"
  repoName = "prod_repo"
  cargoIAM = "production"
  environment = "production"
  
}

output "IP_alb" {
  value = module.production.IP
}