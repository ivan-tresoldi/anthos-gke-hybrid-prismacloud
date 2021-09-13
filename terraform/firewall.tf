resource "google_compute_firewall" "fw-rules" {
  name    = "${google_compute_network.vpc.name}-fwrules"
  network = google_compute_network.vpc.name

  allow {
    protocol = "tcp"
    ports    = ["22", "80", "443"]
  }

  source_ranges = ["134.238.111.214/32", "188.152.12.199/32"]
}
