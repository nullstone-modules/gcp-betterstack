output "ingesting_host" {
  value       = var.ingesting_host
  description = "string ||| The Better Stack source ingesting host telemetry is delivered to."
}

output "source_token_secret_id" {
  value       = google_secret_manager_secret.source_token.id
  description = "string ||| The ID (projects/*/secrets/*) of the GCP Secret Manager secret containing the Better Stack source token"
}

output "source_token_secret_name" {
  value       = google_secret_manager_secret.source_token.secret_id
  description = "string ||| The name of the GCP Secret Manager secret containing the Better Stack source token"
}
