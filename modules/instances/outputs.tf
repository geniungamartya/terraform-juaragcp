output "instance_names" {
  value = [
    google_compute_instance.tf-instance-1.name,
    google_compute_instance.tf-instance-2.name
  ]
}
