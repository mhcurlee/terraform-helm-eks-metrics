terraform {
  required_providers {
 
    helm = {
      source  = "hashicorp/helm"
      version = "2.4.1"
    }
  }
}


provider "helm" {
  kubernetes {
    host                   = var.host
    token                  = var.token
    cluster_ca_certificate = var.cacert
  }
}