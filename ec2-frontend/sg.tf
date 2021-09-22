resource "aws_security_group" "bastion" {
  name          = var.sg_name
  vpc_id        = var.vpc_id

  ingress {
    description = "Inbound para SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["189.96.1.88/32"]
  }
  ingress {
    description = "Inbound para SSH"
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["189.96.1.88/32"]
  }
  egress {
    description = "Outbound Mundo"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }  

  tags = {
    AMBIENTE = var.ambiente
    BILLING = var.billing
    DONO = var.dono
    Name = var.t_sg_name
    PROJETO = var.projeto
  }
}
output "SG-ID" {
  value = aws_security_group.bastion.id
}