data "terraform_remote_state" "gcp_project_data" {
  backend = "gcs"
  config = {
    bucket = var.bucket_state
  }
}