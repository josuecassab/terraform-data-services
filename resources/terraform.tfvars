pubsub_topic = {
  topic1 = { name = "test1" }
}

service_account = {
  sa1 = {
    sa_account_id   = "service-account-1"
    sa_display_name = "service-account-1"
    sa_roles        = ["roles/owner"]
    description     = "sa1"
  }
}

bigquery_dataset = {
    dataset1 = {
        dataset_id                 = "dataset1"
        friendly_name              = "dataset1"
        location                   = "us-east1"
        description                = "dataset1"
        delete_contents_on_destroy = true
    }
}

storage_bucket = {
    bucket1 = {
        bucket_name = "josue-bucket1"
        folders     = ["folder1"]
    }
}

project_id = "myproject-387020"

vpc_host_net = "default"

bucket_state = "josue-terraform-state"