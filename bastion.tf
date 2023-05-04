data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

  owners = ["099720109477"]
}

resource "aws_instance" "bastionh" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.web1a.id
  vpc_security_group_ids = [aws_security_group.bastion_sg.id]
  key_name               = "devops"
  tags = {
    Name = "bastion-dev"
  }
}

resource "aws_instance" "bastionb" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.web1b.id
  vpc_security_group_ids = [aws_security_group.bastion_sg.id]
  key_name               = "devops"
  tags = {
    Name = "bastion-dev"
  }
}

#resource "null_resource" "copy_ec2_keys" {
 # depends_on = [aws_instance.bastionh]
 # connection {
 #   type        = "ssh"
#    host        = aws_eip.bastionh.public_ip
 #   user        = "ubuntu"
 #   password    = ""
 #   private_key = file("C:/Users/Carol/Downloads/devops.pem")
  #}


  #provisioner "file" {
 #   source      = "./user-data.sh"
 #   destination = "/tmp/user-data.sh"
  #}
#}
