# General Configuration
general_config = {
  region              = "us-east-1"
  backend_region      = "us-east-1"
  backend_bucket_name = "yahav-testing"
}

# Cluster Configuration
cluster_name    = "my-cluster"
cluster_version = "1.30"
cluster_endpoint_public_access = true

# Addons Configuration
coredns_addon                = {}
eks_pod_identity_agent_addon = {}
kube_proxy_addon             = {}
vpc_cni_addon                = {}

# VPC and Subnets
vpc_id                   = "vpc-1234556abcdef"
subnet_ids               = ["subnet-abcde012", "subnet-bcde012a", "subnet-fghi345a"]
control_plane_subnet_ids = ["subnet-xyzde987", "subnet-slkjf456", "subnet-qeiru789"]

# Node Group Defaults
default_instance_types = ["m6i.large", "m5.large", "m5n.large", "m5zn.large"]

# EKS Managed Node Groups
eks_managed_node_groups = {

  website = {
    ami_type         = "AL2023_x86_64_STANDARD"
    instance_types   = ["t3a.small"]                   
    min_size         = 3                              
    max_size         = 6                               
    desired_size     = 3                              
    enable_monitoring = true                          
    key_name         = "ec2-keypair"                  
    tags = {
      "env"          = "prod"
      "Name"         = "asg-website-prod"
      "backup-daily" = "true"
    }
  }
}

# Cluster Tags
tags = {
  Environment = "prod"
  Terraform   = "true"
}

# Cluster Creator Admin Permissions
enable_cluster_creator_admin_permissions = true
