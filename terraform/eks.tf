module "eks" {
    source  = "terraform-aws-modules/eks/aws"
    version = "~> 19.0"
    cluster_name = "my-eks-cluster"
    cluster_version = "1.24"

    cluster_endpoint_public_access  = true

    vpc_id = module.app-vpc.vpc_id
    subnet_ids = [
        "subnet-053e675a9fd9c2166",
        "subnet-0488f5ddafc8f2608"
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
