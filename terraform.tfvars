# use `gcloud beta billing accounts list`
# if you have too many accounts, check the Cloud Console :)
billing_account = {
  id              = "01B47E-C26C5C-ECBF42"
  organization_id = 1090403494276
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
  data_platform   = false
  gke             = true
  project_factory = true
  sandbox         = true
  teams           = false
}

log_sinks = {
  audit-logs = null
  vpc-sc = {
    filter = "protoPayload.metadata.@type=\"type.googleapis.com/google.cloud.audit.VpcServiceControlAuditMetadata\""
    type   = "logging"
  }
}

cicd_repositories = {
  bootstrap = {
    branch            = null
    identity_provider = "github"
    name              = "davidcharbonnier/gcp-bootstrap"
    type              = "github"
  }
  cicd = {
    branch            = null
    identity_provider = "github"
    name              = "davidcharbonnier/gcp-cicd"
    type              = "github"
  }
  resman = {
    branch            = null
    identity_provider = "github"
    name              = "davidcharbonnier/gcp-resman"
    type              = "github"
  }
}