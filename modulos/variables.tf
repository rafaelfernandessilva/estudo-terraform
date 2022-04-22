variable "owner_image" {
  default = ["099720109477"]
  description = "owner da imagem na aws"
  
}

variable "instance_type" {
  description = "aws instance type define qual tipo de instancia ira ser utilizado"
  default     = "t2.micro"
  
}

variable "image_name" {
  default     = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  description = "nome da imagem a ser buscada na aws"
  type = list 
}


variable "servers" {
  
} 