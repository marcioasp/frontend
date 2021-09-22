resource "local_file" "ip" {
    content  = aws_instance.main.private_ip
    filename = "../ansible/inventario"
}