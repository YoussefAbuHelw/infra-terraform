output "web_instance_id" {
  value = aws_instance.web.private_ip
}
