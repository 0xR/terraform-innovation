resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}

module "accounts" {
  count=2
  source = "./modules/accounts"
  name = "Hello SA ${count.index + 1}"
}
