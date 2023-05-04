resource "aws_eip" "bastionh" {
  vpc      = true
  instance = aws_instance.bastionh.id
}