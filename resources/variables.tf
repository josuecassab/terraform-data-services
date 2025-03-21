/**
 * Copyright 2021 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

variable "bigquery_dataset" {
  description = "values for bigquery"
  type = map(object({
    dataset_id                 = string
    friendly_name              = string
    location                   = optional(string, "us-east4")
    description                = string
    delete_contents_on_destroy = optional(bool, false)
  }))
  default = {}
}

variable "storage_bucket" {
  description = "values for storage bucket"
  type = map(object({
    bucket_name = string
    folders     = list(string)
  }))
  default = {}
}

variable "pubsub_topic" {
  description = "values for pubsub topic"
  type = map(object({
    name = string
  }))
  default = {}
}

variable "service_account" {
  description = "values for service account"
  type = map(object({
    sa_account_id   = string
    sa_display_name = string
    sa_roles        = list(string)
    description     = optional(string, "")
  }))
  default = {}
}

variable "default_region" {
  description = "The region where compute instance will be created. A subnetwork must exigpr in the instance region."
  type        = string
  default     = "us-east1"
}
variable "project_id" {
  description = "project_id"
  type        = string
}

variable "vpc_host_net" {
  description = "vpc_host_net"
  type        = string
}

variable "common_labels" {
  description = "Common labels"
  type        = map(string)
  default     = {}
}

variable "bucket_state" { 
  description = "bucket_state"
  type        = string
}