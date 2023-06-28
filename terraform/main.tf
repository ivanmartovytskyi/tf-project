terraform {
  backend "gcs" {
    bucket = "tf-project"
    prefix = "terraform/state"
  }
}

module "gke_cluster" {
  source         = "github.com/ivanmartovytskyi/tf-google-gke-cluster"
  GOOGLE_REGION  = var.GOOGLE_REGION
  GOOGLE_PROJECT = var.GOOGLE_PROJECT
  GKE_NUM_NODES  = 2
}
