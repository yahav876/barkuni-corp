# Repository Overview

This repository contains the infrastructure, application code, and deployment configurations for a simple Python Flask web application. The repository is organized into three main sections:

- **Terraform**: Manages the infrastructure for deploying the application, including AWS resources such as an EKS cluster.
- **Docker**: Contains the Docker setup for containerizing the Flask application.
- **Helm Chart**: Provides the Helm chart for deploying the Flask app to a Kubernetes cluster.

---

## Directory Structure

```plaintext
.
├── docker/                     # Flask application and Docker setup
│   ├── app.py                  # Python Flask application providing a RESTful API
│   ├── Dockerfile              # Dockerfile to containerize the Flask app
│
├── flask-app-chart/             # Helm chart for deploying the Flask app to Kubernetes
│   ├── templates/              # Kubernetes resource templates for the Flask app
│   ├── Chart.yaml              # Helm chart definition
│   ├── values.yaml             # Default configuration values for the Helm chart
│
├── terraform/                   # Infrastructure as code for AWS and Kubernetes
│   ├── env/prod/                # Production environment configuration
│   │   ├── backend/             # Terraform backend configuration (for state management)
│   │   ├── variables.tfvars     # Variables for the production environment
│   └── src/                     # Source files for defining EKS, VPC, and other AWS resources
│       ├── eks-module.tf        # Main Terraform module for EKS setup
│       ├── variables.tf         # Variables file for Terraform
└── README.md                    


