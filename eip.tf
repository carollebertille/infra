resource "aws_eip" "bastionh" {
  vpc      = true
  instance = aws_instance.bastionh.id
}

resource "aws_eip" "bastionb" {
  vpc      = true
  instance = aws_instance.bastionb.id
}