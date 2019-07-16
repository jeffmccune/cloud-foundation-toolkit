# module "variables" { source = "../variables" }

variable "phoogle_credentials_path" {
  description = "Path to credentials file for phoogle.net organization."
}

variable "phoogle_org_id" {
  default = "826592752744"
}

variable "core_group" {
  description = "The CFT core group"
  default     = "cloud-foundation-core@google.com"
}

// From module variables
variable "name_prefix" {
  default = "cicd-jmccune"
  description = "Common prefix for naming resources such as networks and k8s clusters."
}

# variable "project_id" {
#   default = "cloud-foundation-cicd"
#   description = "ID of project where all CICD resources will be launched."
# }

variable "region" {
  default = "us-west1"
  description = "GCP region to launch resources in. Keys should correspond to Terraform workspaces."
}

variable "phoogle_billing_account" {
  default = "01E8A0-35F760-5CF02A"
}
