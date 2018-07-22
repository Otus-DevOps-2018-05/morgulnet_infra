resource "google_compute_instance_group" "instance-group-app" {
  name = "instance-group-app"

  instances = [
    "${google_compute_instance.reddit-app.self_link}",
  ]

  zone = "${var.zones}"
}

resource "google_compute_forwarding_rule" "my-int-lb-forwarding-rule" {
  name                  = "my-int-lb-forwarding-rule"
  load_balancing_scheme = "INTERNAL"
  ports                 = ["9292"]
  backend_service       = "${google_compute_region_backend_service.backend-service.self_link}"
}

resource "google_compute_health_check" "health-check" {
  name = "health-check"

  timeout_sec        = 1
  check_interval_sec = 1

  tcp_health_check {
    port = "9292"
  }
}

resource "google_compute_region_backend_service" "backend-service" {
  name          = "backend-service"
  health_checks = ["${google_compute_health_check.health-check.self_link}"]

  backend {
    group = "${google_compute_instance_group.instance-group-app.self_link}"
  }
}
