# use `gcloud beta billing accounts list`
# if you have too many accounts, check the Cloud Console :)
billing_account = {
  id = "01B47E-C26C5C-ECBF42"
}

# use `gcloud organizations list`
organization = {
  domain      = "davidcharbonnier.fr"
  id          = 1090403494276
  customer_id = "C03wdkbqd"
}

# use something unique and short
prefix = "dch"

locations = {
  bq      = "us"
  gcs     = "NORTHAMERICA-NORTHEAST1"
  logging = "global"
  pubsub  = []
}

workload_identity_providers = {
  github = {
    attribute_condition = "attribute.repository_owner==\"davidcharbonnier\""
    issuer              = "github"
  }
}

cicd_config = {
  bootstrap = {
    identity_provider = "github"
    repository = {
      name   = "davidcharbonnier/gcp-bootstrap"
      branch = null
      type   = "github"
    }
  }
  resman = {
    identity_provider = "github"
    repository = {
      name   = "davidcharbonnier/gcp-resman"
      branch = null
      type   = "github"
    }
  }
}

groups = {
  gcp-billing-admins      = "gcp-billing-admins",
  gcp-devops              = "gcp-devops",
  gcp-network-admins      = "gcp-network-admins"
  gcp-organization-admins = "gcp-organization-admins"
  gcp-security-admins     = "gcp-security-admins"
  gcp-support             = "gcp-support"
}