module "eks" {
    source  = "terraform-aws-modules/eks/aws"
    version = "~> 19.0"
    cluster_name = "my-eks-cluster"
    cluster_version = "1.24"

    cluster_endpoint_public_access  = true

    vpc_id = module.app-vpc.vpc_id
    subnet_ids = ["subnet-05a7119aef97b20cc,subnet-02e11ea1246f21ad3,subnet-0843aa3f6f6ccd60a"]

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
