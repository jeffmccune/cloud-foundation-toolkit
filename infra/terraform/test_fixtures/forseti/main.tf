provider "google" {
  # project = "${module.variables.project_id}"
  # region  = "${module.variables.region[terraform.workspace]}"
  project = "jmccune-seed"
  region  = "us-west1"
  version = "~> 2.7.0"
}

provider "google-beta" {
  # project = "${module.variables.project_id}"
  # region  = "${module.variables.region[terraform.workspace]}"
  project = "jmccune-seed"
  region  = "us-west1"
  version = "~> 2.7.0"
}

provider "google" {
  alias       = "phoogle"
  credentials = "${var.phoogle_credentials_path}"
  version     = "~> 2.7.0"
}

provider "google-beta" {
  alias       = "phoogle"
  credentials = "${var.phoogle_credentials_path}"
  version     = "~> 2.7.0"
}

terraform {
  required_version = "0.11.14"

  # backend "gcs" {
  #   bucket = "cloud-foundation-cicd-tfstate"
  #   prefix = "test_fixtures"
  # }
}


