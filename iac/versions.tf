terraform {
  required_version = ">= 1.5.0"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }

  # Backend for remote state (configure with your GCS bucket if using; otherwise local)
  # backend "gcs" {
  #   bucket = "your-tf-state-bucket"
  #   prefix = "terraform/state"
  # }
}