module "production" {
  source = "../../infra"
  repoName = "production"
  cargoIAM = "production"
  environment = "production"
  
}

output "IP_alb" {
  value = module.production.IP
}