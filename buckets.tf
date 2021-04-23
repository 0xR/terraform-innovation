resource "random_id" "bucket" {
  byte_length = 2
}

resource "google_storage_bucket" "terraform-state" {
  name     = "terraform_state_${random_id.bucket.hex}"
  location = "EU"
}

output "bucket" {
  value = google_storage_bucket.terraform-state.name
}
