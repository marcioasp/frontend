// RANGE IPV4 DA VPC NO FORMATO CIDR
vpc_cidr_block = "10.80.0.0/16"

// NOME DA REGIAO DESEJADA
region = "sa-east-1"

// QUANTIDADE DE SUBNETS QUE DESEJA CRIAR BASEADO NAS ZONAS AWS
az_count = "3"

// Nome da ec2
ec2_name = "bastion"

// TIPO DE INSTANCIA QUE DESEJA CRIAR
instance_type = "t2.micro"

// NUMERO DE INSTANCIAS QUE DESEJA CRIAR
number_of_instances = "1"

// ID DA IMAGEM DA AMI
ami_id = "ami-074d4dd5abaaaaf43"

// TAGS DOS RECURSOS
ambiente = "TESTE"
billing  = "BASTION"
dono     = "FOXNET"
projeto  = "TESTE"

key_name = "bastion_key"

// VPC E SUBNET
vpc_id = "vpc-09bf6c133724659ec"
sub_net_id = "subnet-04e3a7a8648383bdc"

// SECURITY GROUP / TAG DO SECURITY GROUP
sg_name = "frontend-sg"
t_sg_name = "frontend"


 // ALTERAR DEPOIS
 // ESTA COM DADOS DE TESTE NA DATASALES