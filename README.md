
# CICD-Wordpress deployment on aws with Terraform
This project build and deploy [Wordpress](https://wordpress.org/) application using a [Jenkins](https://www.jenkins.io/) CICD Pipeline and [Docker](https://www.docker.com/) acting as the application container and [Terraform](https://www.terraform.io/) as IAC builder on AWS.

The first step is to build the VPC on AWS and the Jenkins Server with terrfaform.
The 2nd stage is to building the EKS with Wordpresss and Mysql serrvices. you can user my open images or docker official. 
For runnig the CI stage - testing new image ,use the repo https://github.com/Asaf01/CICD_4Danimals_Wordpress_Dev with the same Jenkins Sever.

https://4danimals.com/


## Architecture


![image]<img width="830" alt="diagram" src="https://github.com/user-attachments/assets/647d3630-3b0d-4103-b790-fd34acd846fb">




AWS Architecture

* VPC with CIDR 10.0.0.0/16
* 3 subnets (public) with CIDR 10.0.4.0/24, 10.0.5.0/24, 10.0.6.0/24
* 3 subnets (privat) with CIDR 10.0.1.0/24, 10.0.2.0/24, 10.0.3.0/24
* AWS Networking (Route Table, IGW, Security Groups, ELB, Elastic Ip)
* EC2 Instance, Jenkins Server (t2.large)
* S3 Bucket
* EC2 Instance, Nodes (t2.small)
* Eks
* ```CI/CD - Terraform - AWS - Jenkins - Pipeline```



## List of tools/services used
* [Jenkins](https://www.jenkins.io/)
* [Docker](https://www.docker.com/)
* [Dockerfile](https://docs.docker.com/engine/reference/builder/)
* [Docker Hub](https://hub.docker.com/)
* [Wordpress](https://wordpress.org/)
* [MySQL](https://www.mysql.com/)
* [Terafform](https://www.terraform.io/)
* [prometheus](https://prometheus.io/)
* [Grafana](https://grafana.com/)
* [Draw.io](https://www.draw.io/index.html)


