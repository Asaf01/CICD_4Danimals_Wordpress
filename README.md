

This project involves the creation of a CICD Jenkins Pipeline which will be deploying a Terraform Architecture, using the following stages - Checkout, Initialisation, Validation, Plan and Apply.

In this project we will create:

    VPC with CIDR 10.0.0.0/16
    3 subnets (public) with CIDR 10.0.1.0/24, 10.0.2.0/24, 10.0.3.0/24
    AWS Networking (Route Table, IGW, Security Groups)
    S3 Bucket
    EC2 Instance
    Jenkins Virtualbox Docker Container
    CI/CD - Terraform - AWS - Jenkins - Pipeline

Architecture
This architecture displays the Pipeline stages - Checkout, Initialisation, Validation, Plan and Apply.
pic
Deploy Terraform Architecture using Jenkins Pipeline
pic

Elastic Kubernetes Service (EKS) cluster and deploy Kubernetes manifest files inside it using Jenkins.

Requirements
Name 	Version
terraform 	~>1.3.0
aws 	~>4.30.0
Providers
Name 	Version
aws 	~>4.30.0
List of tools/services used

links.....
links.....
git
jenkins
terraform 
docker 
docker file 
compose
