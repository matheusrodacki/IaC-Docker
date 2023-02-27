module "production" {
  source = "../../infra"
  repoName = "prod_repo"
  description = "production-application"
  max = 5
  instance = "t2.micro"
  env = "production-environment"
}