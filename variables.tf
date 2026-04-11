############################################
# Required Variables
############################################

variable "project_id" {
  description = "GCP Project ID"
  type        = string
}

variable "region" {
  description = "GCP Region"
  type        = string
  default     = "asia-south1"
}

variable "zone" {
  description = "GCP Zone"
  type        = string
  default     = "asia-south1-c"
}

############################################
# GKE / Networking Variables
############################################

variable "network_name" {
  description = "VPC Network Name"
  type        = string
  default     = "banking-vpc"
}

variable "subnet_name" {
  description = "Subnet Name"
  type        = string
  default     = "banking-subnet"
}

variable "cluster_name" {
  description = "GKE Cluster Name"
  type        = string
  default     = "banking-gke"
}
