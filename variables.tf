
variable "aws_region" {
  type        = string
  description = "aws region"
  default     = "us-west-1"
}

variable "aws_profile" {
  type = string
  description = "AWS default profile"
  default = "default"
}

variable "azs" {
  type = list(string)
  description = "Subnet AZs"
  default = ["us-west-1a", "us-west-1b"]
}

variable "subnet_id_1" {
  type = string
  description = "Public Subnet IDs"
  default = "module.vpc.public_subnets[0]"
}

variable "subnet_id_2" {
  type = string
  description = "Public Subnet IDs"
  default = "module.vpc.public_subnets[1]"
}


