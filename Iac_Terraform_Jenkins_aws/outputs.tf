output "ec2_public_ip" {
  value = aws_instance.node-server.public_ip
}
