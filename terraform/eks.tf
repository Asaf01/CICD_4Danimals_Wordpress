module "eks" {
    source  = "terraform-aws-modules/eks/aws"
    version = "~> 19.0"
    cluster_name = "my-eks-cluster"
    cluster_version = "1.24"

    cluster_endpoint_public_access  = true

    vpc_id = module.app-vpc.vpc_id
  subnet_ids = [
    "subnet-053e675a9fd9c2166",  # us-east-1c
    "subnet-0488f5ddafc8f2608",  # us-east-1c
    "subnet-01cda2b848a10f409"   # us-east-1b (adding this to meet EKS requirement)
     ]

    tags = {
        environment = "development"
        application = "wordpress"
    }

    eks_managed_node_groups = {
        Node = {
            min_size = 2
            max_size = 5
            desired_size = 2

            instance_types = ["t2.small"]
        }
    }
}
