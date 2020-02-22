output "IP" {
  value       = aws_instance.home_server.private_ip
  description = "The private ip of intance"
}

output "SECRET_key" {
  value       = tls_private_key.home_tls.private_key_pem
  description = "Secrete key .pem"
}
