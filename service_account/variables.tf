variable "roles" {
  type    = list(string)
  default = ["roles/storage.admin", "roles/logging.viewer", "roles/compute.viewer"]
}

variable "account_id" {
  type = string
}

variable "display_name" {
  type = string
}

variable "project_id" {
  type = string
}