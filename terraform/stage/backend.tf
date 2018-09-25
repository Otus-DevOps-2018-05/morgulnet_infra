terraform {
  backend "gcs" {
    bucket = "storage-mo-stage"
    prefix = "stage"
  }
}
