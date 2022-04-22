module "modulos" {
  source  = "./modulos"
  servers = 1

}

output "public_ip" {
  value =     module.modulos.public_ip_east

}
output "public_dns" {
  value     = module.modulos.public_dns_east
}

# Teste de retorno de um valor sensitive para nonsensitive
variable "nosense" {
  default = "MELHOR ENVIO"
  type = string
  sensitive = true
}

output "teste_sense" {
  value = var.nosense
  sensitive = true
}

output "teste_nosense" {
  value = nonsensitive(var.nosense)
}
