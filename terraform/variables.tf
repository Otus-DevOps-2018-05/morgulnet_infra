variable project {
  description = "Project ID"
}

variable region {
  description = "Region"
  default     = "europe-north1"
}

variable public_key_path {
  description = " SSH pub key path"
}

variable private_key_path {
  description = " SSH key path"
}

variable "zones" {
  default = "europe-north1-a"
}

variable disk_image {
  description = "Disk image"
}
