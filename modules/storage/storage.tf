resource "google_storage_bucket" "terraform_state_bucket" {
  name     = "${var.project_id}-tf-state"
  location = var.region

  storage_class = "STANDARD"

  versioning {
    enabled = true
  }

  lifecycle_rule {
    action {
      type = "Delete"
    }

    condition {
      age = 365
    }
  }
}
