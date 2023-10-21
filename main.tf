variable "proxmox_username" {}
variable "proxmox_password" {}
variable "proxmox_endpoint" {}


terraform {
  required_providers {
    proxmox = {
      source = "bpg/proxmox"
      version = "0.8.0"
    }
  }
}

provider "proxmox" {
  virtual_environment {
    endpoint  = var.proxmox_endpoint
    username = var.proxmox_username
    password = var.proxmox_password
  }
}
