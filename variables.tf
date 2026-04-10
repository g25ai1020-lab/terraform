variable "project_id" {
  description = "GCP Project ID"
}

variable "region" {
  default = "asia-south1"
}

variable "zone" {
  default = "asia-south1-c"
}

variable "network_name" {
  default = "banking-vpc"
}

variable "subnet_name" {
  default = "banking-subnet"
}

variable "gke_name" {
  default = "banking-gke"
}

variable "node_count" {
  default = 1
}

variable "machine_type" {
  default = "e2-micro"
}
