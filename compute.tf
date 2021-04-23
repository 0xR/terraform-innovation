resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}

resource "google_service_account" "hello" {
  count        = 2
  account_id   = "hello-service-account-id-${count.index}"
  display_name = "Service Account ${count.index + 1}"
}

