# Configure the Terraform Google Provider
provider "google" {
  project = var.project_id
}

# Enforce (or adjust) the Organization Policy
resource "google_project_organization_policy" "block_public_ips" {
  project    = var.project_id
  constraint = var.constraint

  list_policy {
    # To enforce (block all): deny { all = true }
    # To disable/allow: deny { all = false } and optionally add allow { values = ["allowed-value"] }
    deny {
      all = var.deny_all
    }

    # Example allowance (uncomment and customize to allow specific IPs/domains if deny_all=false)
    # allow {
    #   values = ["allowed-external-ip-or-domain"]
    # }
  }

  # Lifecycle to prevent accidental deletion
  lifecycle {
    prevent_destroy = true
    ignore_changes  = [list_policy]
  }
}