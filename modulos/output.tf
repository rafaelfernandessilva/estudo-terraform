# Saida de infomações instancia east
output "public_dns_east" {
  value = aws_instance.east[*].public_dns
}

output "public_ip_east" {
  value = aws_instance.east[*].public_ip
  
}

