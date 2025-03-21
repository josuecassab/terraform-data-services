module "service_account" {
  source          = "../service_account"
  for_each        = var.service_account
  account_id   = each.value.sa_account_id
  roles        = each.value.sa_roles 
  display_name = each.value.sa_display_name
  project_id      = var.project_id 
}

resource "google_pubsub_topic" "topic" {
  for_each = var.pubsub_topic
  name     = each.value.name
  project  = "myproject-387020"
}

resource "google_bigquery_dataset" "dataset" {
  for_each                   = var.bigquery_dataset
  dataset_id                 = each.value.dataset_id
  friendly_name              = each.value.friendly_name
  description                = each.value.description
  location                   = each.value.location
  delete_contents_on_destroy = each.value.delete_contents_on_destroy
  labels = local.bigquery_labels
}

module "storage_bucket" {
  source                      = "../storage_bucket"
  for_each                    = var.storage_bucket
  bucket_name                 = each.value.bucket_name
  folders                     = each.value.folders
  labels                      = local.storage_bucket_labels
}