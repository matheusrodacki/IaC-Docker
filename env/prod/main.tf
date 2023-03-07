module "production" {
  source = "../../infra"
  repoName = "prod_repo"
  cargoIAM = "production"
  
}

output "IP_alb" {
  value = module.prod.IP
}