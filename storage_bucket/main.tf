resource "google_storage_bucket" "bucket" {
  name                        = var.bucket_name
  location                    = var.default_region
  storage_class               = var.storage_class
  uniform_bucket_level_access = true
  labels                      = var.labels
  autoclass {
    enabled = true
  }
}

resource "google_storage_bucket_object" "empty_folder" {
  for_each =  toset(var.folders)
  name =  each.key
  content = " "
  bucket = google_storage_bucket.bucket.name
}