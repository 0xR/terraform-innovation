resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}

module "account" {
  source = "./modules/account"
  name = "Hello SA 1"
}

output "account-id" {
  value = module.account.account_id
}
