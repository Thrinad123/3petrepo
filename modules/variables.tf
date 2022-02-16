variable "cluster_zone"{
    default = "europe-west1"
}

variable "project"{
  default = "thri-petproject"
   // default = "396328517622"
}

variable "cluster_secondary_name"{
    default = "subnetpetpod"
}

variable "cluster_service_name"{
    default = "public-services-petproj"
}

variable "master_cidr"{
    default = "82.38.176.208/28"
}

variable "node_count" {
  default = 2
}

variable "autoscaling_min_node_count" {
  default = 1
}

variable "autoscaling_max_node_count" {
  default = 3
}

variable "disk_size_gb" {
  default = 50
}

variable "disk_type" {
  default = "pd-standard"
}

variable "machine_type" {
  default = "n1-standard-2"
}

variable "region"{
    default = "europe-west1"
}

variable "cluster_secondary_range_vpc"{
    default = "10.4.0.0/14"
}


variable "cluster_service_range"{
    default = "10.0.32.0/20"
}


variable "petprojvpc" {
    default = "pet-vpc"
}

variable "subnetpet" {
    default = "sub-pet-vpc"
}

variable "newclusterpet" {
    default = "cluster-pet"
}
