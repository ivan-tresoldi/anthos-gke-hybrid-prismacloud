variable "project_id" {
  description = "project id"
}

variable "region" {
  description = "region"
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
  default     = 2
  description = "number of gke nodes"
}

variable "machine_type" {
  default = "n1-standard-1"
  description = "specified image id for instance"
}

variable "image_name" {
  default = "ubuntu-2004-focal-v20210908"
  description = "Image to be used"
}

variable "image_family" {
  default = "ubuntu-2004-lts"
  description = "Image family"
}