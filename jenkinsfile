#!/usr/bin/env groovy
pipeline {
    agent any
    environment {
        AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
        AWS_DEFAULT_REGION = "us-east-1"
    }
    stages {
        stage("Create an EKS Cluster") {
            steps {
                script {
                    dir('terraform') {
                        sh "terraform init"
                        sh "terraform apply -auto-approve"
                    }
                }
            }
        }
        stage("Deploy to EKS") {
            steps {
                script {
                    dir('kubernetes') {
                        sh "aws eks update-kubeconfig --name my-eks-cluster"
                        sh "kubectl create -f mysql-pv.yaml"
                        sh "kubectl create -f mysql-config.yaml" 
                        sh "kubectl create -f db-root-cred.yaml" 
                        sh "kubectl create -f db-cred.yaml"
                        sh "kubectl create -f mysql.yaml"
                        sh "kubectl create -f wp-configmap.yaml"
                        sh "kubectl create -f wordpress.yaml" 
                        
                    }
                }
            }
        }
        
        stage("test eks cluster") {
            steps {
                script {
                        sh "kubectl cluster-info"
                        sh "kubectl get all"
                        echo "EKS Cluster test completed"
                    }
                }
            }
              
          
           }
             }
