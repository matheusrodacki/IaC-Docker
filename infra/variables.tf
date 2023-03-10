variable "repoName"{
    type = string
}

variable "cargoIAM" {
    type = string
}

variable "environment" {
    type = string
}
#
#variable "health_check_path" {
#  default = "/health"
#}
#
#variable "matcher_ports" {
#  default = "200,302"
#}