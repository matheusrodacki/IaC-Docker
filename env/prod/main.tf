module "production" {
  source = "../../infra"
  cluster_name = "production"
  
}

output "domainName" {
  value = module.production.URL
}
