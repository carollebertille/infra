output "eip" {
  value = aws_eip.bastionh.public_ip
}

output "bastion" {
  value = aws_instance.bastionh.id
}