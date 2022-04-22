# informações imagem para região east

data "aws_ami" "ubuntu_east" {
  most_recent = true


  filter {
    name   = "name"
    values = var.image_name
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = var.owner_image # Canonical
}



resource "aws_instance" "east"  {
  count = var.servers
  
  ami           = data.aws_ami.ubuntu_east.id
  instance_type = var.instance_type
  provider      = aws

  tags = {
    Name = "Host_Web-${count.index + 1}"
  }

}
