resource "googleworkspace_org_unit" "main" {
  name                 = "test-main"
  description          = "For FTEs"
  parent_org_unit_path = "/"
}

resource "googleworkspace_org_unit" "restricted" {
  name                 = "test-restricted"
  description          = "For TVCs"
  parent_org_unit_path = "/"
}

resource "google_organization_policy" "drive_policy" {
  org_id     = google_organization_policy.restricted.org_unit_id
  constraint = ""

  boolean_policy {
    enforced = true
  }
}
