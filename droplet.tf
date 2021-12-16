data "digitalocean_ssh_key" "terraform" {
  name = var.ssh_key
}

resource "random_id" "ipsec_key" {
  byte_length = 32
}

resource "digitalocean_droplet" "vpn" {
  name = var.droplet_name
  image = var.droplet_image
  region = var.droplet_region
  size = var.droplet_size
  ssh_keys = [
    data.digitalocean_ssh_key.terraform.id
  ]
  tags = []
  user_data = templatefile("cloud-init.tftpl", {
    DOMAIN: "${var.droplet_name}.${var.domain_name}",
    DO_PAT: var.do_pat,
    USER: var.user,
    PASS: random_id.ipsec_key.hex
  })
}
