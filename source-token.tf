resource "google_secret_manager_secret" "source_token" {
  // Valid secret_id: [[a-zA-Z_0-9]+]
  secret_id = "${local.resource_name}_source_token"
  labels    = local.labels

  replication {
    auto {}
  }

  depends_on = [google_project_service.secret_manager]
}

resource "google_secret_manager_secret_version" "source_token" {
  secret      = google_secret_manager_secret.source_token.id
  secret_data = var.source_token
}
