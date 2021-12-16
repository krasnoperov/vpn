data "digitalocean_domain" "default" {
  name   = var.domain_name
}

resource "digitalocean_record" "vpn" {
  domain = data.digitalocean_domain.default.name
  type   = "A"
  name   = var.droplet_name
  value  = digitalocean_droplet.vpn.ipv4_address
}
