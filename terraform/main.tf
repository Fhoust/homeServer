resource "tls_private_key" "home_tls" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "home_key" {
  key_name   = var.HOME_KEY
  public_key = tls_private_key.home_tls.public_key_openssh
}

resource "aws_instance" "home_server" {
  ami             = data.aws_ami.ubuntu.id
  instance_type   = "t2.micro"
  key_name        = aws_key_pair.home_key.key_name
  security_groups = [var.SECURITY_GROUP]

  tags = merge(var.TAGS)
}