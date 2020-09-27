provider "aws" {
  region  = "us-east-1"
  profile = "terraform"
}

resource "tls_private_key" "this" {
  algorithm = "RSA"
}

resource "aws_key_pair" "this" {
  key_name   = "kali"
  public_key = tls_private_key.this.public_key_openssh
}

data "template_file" "user_data" {
  template = file("./payload.sh")
}

resource "aws_default_subnet" "default" {
    availability_zone = var.availability_zone
}

resource "aws_instance" "this" {
  ami                         = "ami-08c8387e171a3d095"
  instance_type               = var.instance_type
  availability_zone           = var.availability_zone
  associate_public_ip_address = true
  key_name                    = aws_key_pair.this.key_name
  user_data                   = data.template_file.user_data.rendered
  subnet_id                   = var.subnet_id == null ? aws_default_subnet.default.id : var.subnet_id

  root_block_device {
    volume_size = var.volume_size
  }
}