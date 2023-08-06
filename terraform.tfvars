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

custom_role_names = {
  organization_iam_admin        = "orgIamAdmin"
  service_project_network_admin = "svcProjectNetworkAdmin"
  tenant_network_admin          = "tenantNetworkAdmin"
}

locations = {
  bq      = "us"
  gcs     = "NORTHAMERICA-NORTHEAST1"
  logging = "global"
  pubsub  = []
}

federated_identity_providers = {
  github = {
    attribute_condition = "attribute.repository_owner==\"davidcharbonnier\""
    issuer              = "github"
    custom_settings     = null
  }
}

fast_features = {
  project_factory = true
  sandbox         = true
  teams           = true
}

cicd_repositories = {
  bootstrap = {
    branch            = null
    identity_provider = "github"
    name              = "davidcharbonnier/gcp-bootstrap"
    type              = "github"
  }
  resman = {
    branch            = null
    identity_provider = "github"
    name              = "davidcharbonnier/gcp-resman"
    type              = "github"
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