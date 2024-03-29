resource "aws_security_group" "static_target_sg" {
  name        = "SG for Boundary Public Static Target"
  description = "SG for Boundary Public Static Target"
  vpc_id      = aws_vpc.boundary_ingress_worker_vpc.id

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["${aws_instance.boundary_ingress_worker.public_ip}/32", "${aws_instance.boundary_ingress_worker.private_ip}/32"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_all_from_worker"
  }
  depends_on = [ aws_instance.boundary_ingress_worker ]
}

resource "aws_security_group" "boundary_ingress_worker_ssh" {
  name        = "boundary_ingress_worker_allow_ssh_9202"
  description = "SG for Boundary Ingress Worker"
  vpc_id      = aws_vpc.boundary_ingress_worker_vpc.id

  ingress {
    from_port   = 9202
    to_port     = 9202
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_9202"
  }
}

