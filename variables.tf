variable "ingesting_host" {
  type        = string
  description = <<EOF
The Better Stack source ingesting host (e.g. `s123456.eu-nbg-2.betterstackdata.com`).
Find it on your Better Stack source under "OpenTelemetry" as $INGESTING_HOST.
A leading `https://` and trailing `/` are tolerated and stripped by consumers.
EOF
}

variable "source_token" {
  type        = string
  sensitive   = true
  description = <<EOF
The Better Stack source token, used as `Authorization: Bearer <source_token>` when ingesting.
Find it on your Better Stack source under "OpenTelemetry" as $SOURCE_TOKEN.
Stored in GCP Secret Manager; consumers read it from the exported secret.
EOF
}
