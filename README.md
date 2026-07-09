# gcp-betterstack

Creates a Nullstone **datastore** holding [Better Stack](https://betterstack.com) ingestion
credentials: the source ingesting host and the source token, with the token stored in **GCP
Secret Manager**.

This module provisions no Better Stack resources itself — it is the single place the credentials
for a Better Stack source live so that consumers (e.g. `k8s-otel-betterstack-extender`) can connect
to it and deliver telemetry.

## Setup

In Better Stack, create a source with platform **OpenTelemetry**. The source page shows the two
values this module needs:

- `$INGESTING_HOST` → the `ingesting_host` variable (e.g. `s123456.eu-nbg-2.betterstackdata.com`)
- `$SOURCE_TOKEN` → the `source_token` variable

## Variables

| Name             | Default                  | Description                                                          |
|------------------|--------------------------|----------------------------------------------------------------------|
| `ingesting_host` | _(required)_             | The Better Stack source ingesting host.                              |
| `source_token`   | _(required, sensitive)_  | The Better Stack source token. Stored in GCP Secret Manager.         |

## Outputs

| Name                       | Description                                                                               |
|----------------------------|-------------------------------------------------------------------------------------------|
| `ingesting_host`           | The Better Stack source ingesting host.                                                   |
| `source_token_secret_id`   | The ID (`projects/*/secrets/*`) of the Secret Manager secret containing the source token. |
| `source_token_secret_name` | The name of the Secret Manager secret containing the source token.                        |
