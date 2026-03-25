output "vpc_name" {
  value = google_compute_network.main_vpc.name
}

output "subnets" {
  value = [for s in google_compute_subnetwork.subnets : s.name]
}

output "bucket_name" {
  value = google_storage_bucket.bucket.name
}