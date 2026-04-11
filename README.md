# terraform
terraform/
├── modules/
│   ├── vpc/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── outputs.tf
│   │   └── README.md
│   ├── gke/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── outputs.tf
│   │   └── README.md
│   ├── mysql/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── outputs.tf
│   │   └── README.md
│   ├── keycloak/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── outputs.tf
│   │   └── README.md
│   └── jenkins_vm/
│       ├── main.tf
│       ├── variables.tf
│       ├── outputs.tf
│       └── README.md
│
├── main.tf
├── variables.tf
├── provider.tf
├── outputs.tf
├── terraform.tfvars
└── README.md   ← (auto‑generated below for you)


1. Overview
This Terraform project provisions the entire infrastructure for a microservices‑based banking application on Google Cloud Platform (GCP).
The environment supports a complete CI/CD pipeline using Jenkins, Maven, Docker, Google Container Registry (GCR), and Google Kubernetes Engine (GKE).
Infrastructure includes:

VPC & Subnets
Firewall Rules
GKE Kubernetes Cluster
MySQL Database
Keycloak Authentication Server
Jenkins CI/CD VM
Service Accounts & IAM Roles

2. Folder Structure
terraform/
├── modules/
│   ├── vpc/
│   ├── gke/
│   ├── mysql/
│   ├── keycloak/
│   └── jenkins_vm/
├── main.tf
├── provider.tf
├── variables.tf
├── outputs.tf
└── terraform.tfvars

Each module contains its own:
✅ main.tf
✅ variables.tf
✅ outputs.tf
✅ README.md

3. Prerequisites
Ensure you have installed:

Terraform v1.3+
gcloud CLI
Google Cloud Project + Billing enabled
Service Account with the following roles:

Compute Admin
Kubernetes Admin
Storage Admin
Service Account User
Artifact Registry Admin
SQL Admin



Store the service account JSON in Jenkins credentials.

4. How to Use
Step 1 — Initialize Terraform
terraform init

Step 2 — Validate
terraform validate

Step 3 — Preview Changes
terraform plan -var-file="terraform.tfvars"

Step 4 — Apply
terraform apply -var-file="terraform.tfvars" -auto-approve

Step 5. Destroy Environment
To delete all resources:
terraform destroy -var-file="terraform.tfvars"


Notes

All infrastructure is private except Jenkins (optional).
GKE nodes are inside the private banking subnet.
Keycloak and MySQL are only accessible inside the cluster.
NetworkPolicies restrict microservice communication.
