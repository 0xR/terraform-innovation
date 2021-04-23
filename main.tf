terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "3.5.0"
    }
  }
  backend "gcs" {
    bucket = "terraform_state_c8ef"
  }
}


provider "google" {
  project = "${var.project}"
  region  = "${var.region}"
  zone    = "${var.zone}"
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}

resource "google_service_account" "hello" {
  count = 2
  account_id   = "hello-service-account-id-${count.index}"
  display_name = "Service Account ${count.index + 1}"
}

resource "random_id" "bucket" {
  byte_length = 2
}

resource "google_storage_bucket" "terraform-state" {
  name          = "terraform_state_${random_id.bucket.hex}"
  location      = "EU"
}

