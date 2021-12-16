# IKEv2 VPN Server

StrongSwan VPN service on Digital Ocean with Let's Encrypt certificate and password authentication. 

## You’ll need:

- Terraform
- A DigitalOcean account. If you do not have one, [sign up for a new account](https://m.do.co/c/b14270cb9e50).
- A DigitalOcean [Personal Access Token](https://cloud.digitalocean.com/account/api/tokens).
- A password-less SSH key added to your DigitalOcean account.
- A personal domain [pointed to DigitalOcean’s nameservers](https://www.digitalocean.com/community/tutorials/how-to-point-to-digitalocean-nameservers-from-common-domain-registrars).

## Setup

```
export TF_VAR_do_pat="your_personal_access_token"
export TF_VAR_ssh_key="name_of_your_ssh_key"
export TF_VAR_domain_name="personal.domain.name"
terraform init
terraform apply
```

## Usage

MacOS:
- Go to System Preferences and choose Network.
- Click on the small “plus” button on the lower-left of the list of networks.
- In the popup that appears, set Interface to VPN, set the VPN Type to IKEv2, and give the connection a name.
- In the Server and Remote ID field, enter the server’s domain name. Leave the Local ID blank.
- Click on Authentication Settings, select Username, and enter your username and password from the Terraform output. Then click OK.

## Links

- https://github.com/jawj/IKEv2-setup
- https://www.digitalocean.com/community/tutorials/how-to-set-up-an-ikev2-vpn-server-with-strongswan-on-ubuntu-20-04
