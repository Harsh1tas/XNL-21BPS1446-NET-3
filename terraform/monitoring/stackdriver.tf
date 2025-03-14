resource "google_logging_project_sink" "main" {
  name        = "gcp-log-sink"
  destination = "storage.googleapis.com/${google_storage_bucket.logs.name}"
  filter      = "resource.type=gce_instance AND severity>=WARNING"
}

resource "google_storage_bucket" "logs" {
  name     = "gcp-log-bucket"
  location = "US"
}

