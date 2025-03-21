locals {
  common_labels                  = var.common_labels
  bigquery_specific_labels       = { tiporecurso = "bigquery_dataset" }
  storage_bucket_specific_labels = { tiporecurso = "storage_bucket" }
  pubsub_topic_specific_labels   = { tiporecurso = "pubsub_topic" }

  bigquery_labels       = merge(local.common_labels, local.bigquery_specific_labels)
  storage_bucket_labels = merge(local.common_labels, local.storage_bucket_specific_labels)
  pubsub_topic_labels   = merge(local.common_labels, local.pubsub_topic_specific_labels)
}