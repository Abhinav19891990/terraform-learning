variable "region" {
  default = "us-west-2"
}

output "ip" {
  value = aws_eip.ip.public_ip
}