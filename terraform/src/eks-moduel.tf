module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.0"

  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version

  cluster_endpoint_public_access  = var.cluster_endpoint_public_access

  cluster_addons = {
    coredns                = var.coredns_addon
    eks-pod-identity-agent = var.eks_pod_identity_agent_addon
    kube-proxy             = var.kube_proxy_addon
    vpc-cni                = var.vpc_cni_addon
  }

  vpc_id                   = var.vpc_id
  subnet_ids               = var.subnet_ids
  control_plane_subnet_ids = var.control_plane_subnet_ids

  # Default values for all node groups
  eks_managed_node_group_defaults = {
    instance_types = var.default_instance_types
  }

  # EKS Managed Node Group(s)
  eks_managed_node_groups = var.eks_managed_node_groups

  enable_cluster_creator_admin_permissions = var.enable_cluster_creator_admin_permissions

  tags = var.tags
}
