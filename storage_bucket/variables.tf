variable "bucket_name" {
  description = "Bucket name"
  type        = string
}

variable "default_region" {
  description = "The region where compute instance will be created. A subnetwork must exigpr in the instance region."
  type        = string
  default     = "us-east4"
}

variable "storage_class" {
  description = "The region where compute instance will be created. A subnetwork must exigpr in the instance region."
  type        = string
  default     = "STANDARD"
}

variable "labels" {
  description = "storage bucket labels"
  type        = map(string)
  default     = {}
}

variable "folders" {
  description = "folders"
  type        = list(string)
  default     = []
}