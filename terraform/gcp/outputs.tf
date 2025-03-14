output "network_name" {
  value = google_compute_network.vpc_network.name
}

output "instance_self_link" {
  value = google_compute_instance.vm_instance.self_link
}

