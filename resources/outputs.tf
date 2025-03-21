output "pubsub_topics" {
  description = "Pubsub topic ids"
  value       = google_pubsub_topic.topic
}

# output "service_accounts" {
#   description = "service account ids"
#   value       = module.service_account
# }

# output "storage_buckets" {
#   description = "storage bucket names"
#   value       = module.storage_bucket
# }

# output "bigquery_datasets" {
#   description = "bigquery dataset ids"
#   value       = google_bigquery_dataset.dataset
# }