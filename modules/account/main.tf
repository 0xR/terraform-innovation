module "slugify" {
  source = "../slugify"
  input = var.name
}

resource "google_service_account" "sa" {
  display_name = var.name
  account_id = module.slugify.slugified
}

output account_id {
  value = google_service_account.sa.account_id
}
