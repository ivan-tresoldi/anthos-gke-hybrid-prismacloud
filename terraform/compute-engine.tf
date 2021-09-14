
data "google_compute_image" "image" {
  name    = "${var.image_name}"
  project = "${var.image_project}"
}

resource "google_compute_instance" "instances" {
  count                     = 2
  name                      = "${var.project_id}-itresoldi-${count.index}"
  machine_type = "${var.machine_type}"
  zone         = "${var.zone}"
  allow_stopping_for_update = true

  boot_disk {
    initialize_params {
      image = "${data.google_compute_image.image.self_link}"
    }
  }

  network_interface {
    network = google_compute_network.vpc.name
    subnetwork = google_compute_subnetwork.subnet.name
    access_config {
      // Ephemeral IP
    }
  }

  metadata_startup_script  = "${file("./prerequisites.sh")}"
}