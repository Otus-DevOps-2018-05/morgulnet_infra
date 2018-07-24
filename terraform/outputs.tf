output "app_ip" {
  value = "${google_compute_instance.reddit-app.*.network_interface.0.access_config.0.assigned_nat_ip}"
}

output "lb_ip" {
  value = "${google_compute_forwarding_rule.default.ip_address}"
}
