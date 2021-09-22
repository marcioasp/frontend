resource "aws_instance" "main" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = var.key_name
  subnet_id              = var.sub_net_id
  vpc_security_group_ids = ["${aws_security_group.bastion.id}"]
  
  tags = {
    AMBIENTE = var.ambiente
    BILLING = var.billing
    DONO = var.dono
    Name = var.ec2_name
    PROJETO = var.projeto
  }
}

output "EC2-IP" {
  value = "${aws_instance.main.public_ip}"
}