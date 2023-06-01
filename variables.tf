
variable "aws_region" {
  type        = string
  description = "aws region"
  default     = "us-west-1"
}

variable "aws_profile" {
  type        = string
  description = "AWS default profile"
  default     = "default"
}

variable "ami_id" {
  type        = string
  description = "AMI Ids"
  default     = "ami-00d8a762cb0c50254"
}

variable "instance_type" {
  type        = string
  description = "Instance Types"
  default     = "t2.micro"
}

variable "key_name" {
  type        = string
  description = "Key Name"
  default     = "richaws"
}

variable "repo_name" {
  type        = string
  description = "Repository Name"
  default     = "product_service"
}


