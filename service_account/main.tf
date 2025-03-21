resource "google_service_account" "my_service_account" {
  account_id   = var.account_id
  display_name = var.display_name
}

resource "google_project_iam_member" "sa_roles" {
  for_each = toset(var.roles)
  project  = var.project_id
  role     = each.value
  member   = "serviceAccount:${google_service_account.my_service_account.email}"
}
