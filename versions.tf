terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "2.17.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.3.2"
    }
  }
  required_version = ">= 0.13"
}