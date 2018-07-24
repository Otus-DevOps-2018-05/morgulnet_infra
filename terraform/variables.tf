variable project {
  description = "Project ID"
}

variable region {
  description = "Region"
  default     = "europe-west1"
}

variable public_key_path {
  description = " SSH pub key path"
}

variable private_key_path {
  description = " SSH key path"
}

variable "zones" {
  default = "europe-west1-b"
}

variable disk_image {
  description = "Disk image"
}

variable vm_count {
  description = "Count of VM"
  default     = 1
}
