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

module "project" {
  source                      = "terraform-google-modules/project-factory/google"
  version                     = ">= 12.0"
  random_project_id           = "true"
  name                        = var.project_name
  billing_account             = var.billing_account
  activate_apis               = distinct(concat(var.activate_apis, ["billingbudgets.googleapis.com"]))

  create_project_sa = true
  project_sa_name = "sa-archetype"

  deletion_policy = "DELETE"
}