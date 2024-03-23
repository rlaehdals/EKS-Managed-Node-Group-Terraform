module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.0"

  cluster_name    = "my-cluster"
  cluster_version = "1.29" # 최신 Kubernetes 버전으로 업데이트를 고려하세요.

  cluster_endpoint_public_access = true

  cluster_addons = {
    coredns = {
      most_recent = true
    },
    kube-proxy = {
      most_recent = true
    },
    vpc-cni = {
      most_recent = true
    }
  }

  vpc_id                   = module.vpc.vpc-id
  subnet_ids               = [module.subnets.private-subnet-1-id, module.subnets.private-subnet-2-id, module.subnets.private-subnet-3-id] 
  control_plane_subnet_ids = [module.subnets.public-subnet-1-id, module.subnets.public-subnet-2-id, module.subnets.public-subnet-3-id] 

  eks_managed_node_groups = {
    example = {
      min_size     = 1
      max_size     = 10
      desired_size = 1

      instance_types = ["t3.large"]
      capacity_type  = "ON_DEMAND"
    }
  }

  enable_cluster_creator_admin_permissions = true

  tags = {
    Environment = "dev"
    Terraform   = "true"
  }
}
