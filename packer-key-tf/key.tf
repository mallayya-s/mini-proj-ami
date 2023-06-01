resource "aws_key_pair" "packer_key_pair" {
  key_name = "packer-key"
  public_key = tls_private_key.rsa.public_key_openssh
}

resource "tls_private_key" "rsa" {
  algorithm = "RSA"
  rsa_bits  = 4096
}
resource "local_file" "packer_private_key" {
  content  = tls_private_key.rsa.private_key_pem
  filename = "packer-key.pem"
}
