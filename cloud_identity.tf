resource "google_cloud_identity_group" "cloud_identity_group_1" {
  display_name         = "identity-group-1"

  parent = "customers/C03gpfedd"

  group_key {
      id = "identity-group-1@interview-test.xyz"
  }

  labels = {
    "cloudidentity.googleapis.com/groups.discussion_forum" = ""
  }
}

resource "google_cloud_identity_group_membership" "cloud_identity_group_1_membership" {
  group    = google_cloud_identity_group.cloud_identity_group_1.id

  # Probably best to use another method, like a file
  preferred_member_key {
    id = "barton.elles@interview-test.xyz"
  }

  roles {
      name = "OWNER"
  }
}
