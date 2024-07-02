terraform {
  backend "s3" {
    bucket = "jenkins-terra-k8s"
    region = "us-east-1"
    key = "eks/terraform.tfstate"
  }
}
