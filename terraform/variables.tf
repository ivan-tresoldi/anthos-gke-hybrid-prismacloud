variable "project_id" {
  description = "project id"
}

variable "region" {
  default = "europe-west3"
  description = "region"
}

variable "zone" {
  default = "europe-west3-a"
  description = "zone"
}

variable "gke_username" {
  default     = ""
  description = "gke username"
}

variable "gke_password" {
  default     = ""
  description = "gke password"
}

variable "gke_num_nodes" {
  default     = "2"
  description = "number of gke nodes"
}

variable "machine_type" {
  default = "n1-standard-1"
  description = "specified image id for instance"
}

variable "image_name" {
  default = "ubuntu-1804-bionic-v20210702"
  description = "Image to be used"
}

variable "image_family" {
  default = "ubuntu-1804-lts"
  description = "Image family"
}

variable "image_project" {
  default = "ubuntu-os-cloud"
  description = "Image Project"
}

variable "num_instances" {
  default = "2"
  description = "Number of requested instances"
}