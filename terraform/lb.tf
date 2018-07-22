resource "google_compute_target_pool" "default" {
  name = "instance-pool"

  instances = [
    "europe-west1-b/reddit-app",
    "europe-west1-b/reddit-app2",
  ]

  health_checks = [
    "${google_compute_http_health_check.default.name}",
  ]
}

resource "google_compute_http_health_check" "default" {
  name               = "default"
  check_interval_sec = 1
  timeout_sec        = 1
  port               = "9292"
}

resource "google_compute_forwarding_rule" "default" {
  name                  = "default-fw"
  target                = "${google_compute_target_pool.default.self_link}"
  load_balancing_scheme = "EXTERNAL"
  port_range            = "9292"
}

resource "google_compute_global_address" "external-address" {
  name = "external-address"
}
