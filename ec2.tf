
resource "aws_instance" "demo-ec2-1" {
  ami           = "ami-00d8a762cb0c50254"
  instance_type = "t2.micro"
  subnet_id     = "module.vpc.public_subnets[0]"
  key_name      = "richaws"

  depends_on = [module.vpc]
  
  tags = {
   Name = "Demo-Server-1"
  }
}

resource "aws_instance" "demo-ec2-2" {
  ami           = "ami-00d8a762cb0c50254"
  instance_type = "t2.micro"
  subnet_id     = "module.vpc.public_subnets[1]" 
  key_name      = "richaws"

  depends_on = [module.vpc]

  tags = {
   Name = "Demo-Server-2"
  }
}

