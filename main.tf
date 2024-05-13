terraform {
  backend "gcs" {
    bucket = "vshpelyk"
    prefix = "terraform/state"
  }
}

module "gke_cluster" {
  source         = "github.com/vshpelyk/tf-google-gke-cluster"
  GOOGLE_REGION  = var.GOOGLE_REGION
  GOOGLE_PROJECT = var.GOOGLE_PROJECT
  GKE_NUM_NODES  = 2
  }