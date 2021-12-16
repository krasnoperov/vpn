output "domain_name" {
  value = digitalocean_record.vpn.fqdn
}

output "username" {
  value = var.user
}

output "password" {
  value = random_id.ipsec_key.hex
}
