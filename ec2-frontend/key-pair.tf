/*resource "tls_private_key" "this" {
  algorithm = "RSA"
}

module "key_pair" {
  source = "terraform-aws-modules/key-pair/aws"

  key_name   = var.key_name
  public_key = tls_private_key.this.public_key_openssh
   
   tags = {
    AMBIENTE = var.ambiente
    BILLING  = var.billing
    DONO     = var.dono
    Name     = var.ec2_name
    PROJETO  = var.projeto
  }
}*/