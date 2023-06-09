#resource "aws_instance" "demo-ec2-1" {
#   ami                    = var.ami_id
#   instance_type          = var.instance_type
#   subnet_id              = module.vpc.public_subnets[0]
#   vpc_security_group_ids = [aws_security_group.webserver_sg_rules.id]
#   key_name               = var.key_name

#   depends_on = [module.vpc, aws_security_group.webserver_sg_rules]

#   tags = {
#     Name = "Demo-Server-1"
#   }
# }

# resource "aws_instance" "demo-ec2-2" {
#   ami                    = var.ami_id
#   instance_type          = var.instance_type
#   subnet_id              = module.vpc.public_subnets[1]
#   vpc_security_group_ids = [aws_security_group.webserver_sg_rules.id]
#   key_name               = var.key_name

#   depends_on = [module.vpc, aws_security_group.webserver_sg_rules]

#   tags = {
#     Name = "Demo-Server-2"
#   }
# }

# resource "aws_instance" "Jenkins_server" {
#   ami                    = var.ami_id
#   instance_type          = var.instance_type
#   subnet_id              = module.vpc.public_subnets[1]
#   vpc_security_group_ids = [aws_security_group.webserver_sg_rules.id]
#   key_name               = var.key_name

#   depends_on = [module.vpc, aws_security_group.webserver_sg_rules]

#   tags = {
#     Name = "Jenkins Master Data Apps"
#     }

#   provisioner "remote-exec"  {
#     inline  = [
#       "sudo yum update –y",
#       "sudo yum -y install wget",
#       "sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo",
#       "sudo rpm
