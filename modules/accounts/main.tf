resource "google_service_account" "service_account" {
  account_id   = replace(replace(lower(var.name), "/[^a-z0-9]+/", "-"), "/(^-|-$)/", "")
  display_name = var.name
}
