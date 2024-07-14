# CICD-Wordpress deployment on aws with Terraform
This project build and deploy [Wordpress](https://wordpress.org/) application using a [Jenkins](https://www.jenkins.io/) CICD Pipeline and [Docker](https://www.docker.com/) acting as the application container and Terraform as IAC builder on AWS.


## Architecture


![image](https://user-images.githubusercontent.com/83971386/201048278-cd83be08-7417-4aa4-94c5-1c62daf20724.png)<img width="830" alt="diagram" src="https://github.com/user-attachments/assets/647d3630-3b0d-4103-b790-fd34acd846fb">




## Build Process
This section details the steps required to Build, Test, Push and Deploy the Wordpress application via Docker using a Jenkins CI/CD Pipeline.



## List of tools/services used
* [Jenkins](https://www.jenkins.io/)
* [Docker](https://www.docker.com/)
* [Dockerfile](https://docs.docker.com/engine/reference/builder/)
* [Docker Hub](https://hub.docker.com/)
* [Wordpress](https://wordpress.org/)
* [MySQL](https://www.mysql.com/)
* [Terafform] (https://www.terraform.io/)
* [prometheus] (https://prometheus.io/)
* [Grafana] (https://grafana.com//)
* [Draw.io](https://www.draw.io/index.html)





This project involves the creation of a CICD Jenkins Pipeline which will be deploying a Terraform Architecture, using the following stages - Checkout, Initialisation, Validation, Plan and Apply.

In this project we will create  :

/ 
    VPC with CIDR 10.0.0.0/16
/
    3 subnets (public) with CIDR 10.0.1.0/24, 10.0.2.0/24, 10.0.3.0/24
 /   
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
