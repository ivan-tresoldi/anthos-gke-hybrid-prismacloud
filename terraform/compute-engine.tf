
data "google_compute_image" "image" {
  name    = "${var.image_name}"
  project = "${var.image_family}"
}

resource "google_compute_instance" "instances" {
  count                     = length(var.instances)
  name                      = "${var.project_name}-itresoldi-${count.index}"
  machine_type = "${var.machine_type}"
  zone         = "${var.region}"
  allow_stopping_for_update = true

  boot_disk {
    initialize_params {
      image = "${data.google_compute_image.image.self_link}"
    }
  }

  network_interface {
    network = google_compute_network.vpc.name
    subnetwork = google_compute_subnetwork.subnet.name

  metadata_startup_script  = "${file("./prerequisites.sh")}"
}
}