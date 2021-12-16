# DigitalOcean Personal Access Token
variable "do_pat" {}

# Name of a password-less SSH key added to your DigitalOcean account.
variable "ssh_key" {}

# A personal domain pointed to DigitalOcean’s nameservers
variable "domain_name" {}

variable "user" {
  default = "user"
}

variable "droplet_name" {
  default = "vpn"
}

variable "droplet_image" {
  default = "ubuntu-20-04-x64"
}

variable "droplet_region" {
  default = "ams3"
}

variable "droplet_size" {
  default = "s-1vcpu-1gb"
}
