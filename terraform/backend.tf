terraform {
  backend "s3" {
    bucket = "jenkins-terrafora-k8s"
    region = "eu-west-3"
    key = "eks/terraform.tfstate"
  }
}