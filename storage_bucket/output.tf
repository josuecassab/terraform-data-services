output "bucket_name" {
  description = "Pubsub topic ids"
  value       = google_storage_bucket.bucket.name
}

output "folders" {
  description = "Pubsub topic ids"
  value       = google_storage_bucket_object.empty_folder
}