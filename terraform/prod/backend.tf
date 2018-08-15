terraform {
  backend "gcs" {
    bucket = "storage-mo-prod"
    prefix = "stage"
  }
}
