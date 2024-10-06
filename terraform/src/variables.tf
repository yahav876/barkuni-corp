# General Configuration
variable "general_config" {
  type = map(string)
  description = "General configuration for region, backend, and bucket names"
  default = {
    region              = ""
    backend_region      = ""
    backend_bucket_name = ""
  }
}

# Cluster Configuration
variable "cluster_name" {
  type = string
  description = "The name of the EKS cluster"
}

variable "cluster_version" {
  type = string
  description = "The version of the EKS cluster"
}

variable "cluster_endpoint_public_access" {
  type = bool
  description = "Enable or disable public access to the cluster endpoint"
}

# Addons Configuration (List of Maps for Addons)
variable "coredns_addon" {
  type = map(any)
  description = "CoreDNS addon configuration"
}

variable "eks_pod_identity_agent_addon" {
  type = map(any)
  description = "EKS Pod Identity Agent addon configuration"
}

variable "kube_proxy_addon" {
  type = map(any)
  description = "Kube-proxy addon configuration"
}

variable "vpc_cni_addon" {
  type = map(any)
  description = "VPC CNI addon configuration"
}

# VPC and Subnets
variable "vpc_id" {
  type = string
  description = "The VPC ID for the EKS cluster"
}

variable "subnet_ids" {
  type = list(string)
  description = "List of subnet IDs for the worker nodes"
}

variable "control_plane_subnet_ids" {
  type = list(string)
  description = "List of subnet IDs for the control plane"
}

# Node Group Defaults (List of Instance Types)
variable "default_instance_types" {
  type = list(string)
  description = "Default instance types for EKS managed node groups"
}

# EKS Managed Node Groups (List of Maps)
variable "eks_managed_node_groups" {
  type = map(object({
    ami_type         = string
    instance_types   = list(string)
    min_size         = number
    max_size         = number
    desired_size     = number
    enable_monitoring = bool
    key_name         = string
    tags = map(string)
  }))
  description = "Configuration for EKS managed node groups"
}

# Cluster Tags (Map of Strings)
variable "tags" {
  type = map(string)
  description = "Tags applied to the EKS cluster"
}

# Cluster Creator Admin Permissions
variable "enable_cluster_creator_admin_permissions" {
  type = bool
  description = "Whether to enable admin permissions for the cluster creator"
}
