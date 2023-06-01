#Security Groups

resource "aws_security_group" "webserver_sg" {
  name        = "webserver-sg"
  vpc_id      = module.vpc.vpc_id
  description = "webserver-security-group"

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

 ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["10.0.101.0/24", "10.0.102.0/24"]
  }

 ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["10.0.101.0/24", "10.0.102.0/24"]
  }

 ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

 depends_on = [module.vpc]
}
