# VPC
resource "google_compute_network" "main_vpc" {
  name = var.vpc_name
  auto_create_subnetworks = false
}

# Subnets
resource "google_compute_subnetwork" "subnets" {
  for_each = { for idx, name in var.subnet_names : idx => name }
  name = each.value
  ip_cidr_range = var.subnet_cidrs[each.key]
  region = var.region
  network = google_compute_network.main_vpc.id
}



# Bucket
resource "google_storage_bucket" "bucket" {
  name = "gcs-bkt-01"
  location = var.region
}