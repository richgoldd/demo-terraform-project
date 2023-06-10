#ECR Repo

resource "aws_ecr_repository" "apprepo" {
  name                 = var.repo_name
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = false
  }
}

#resource "aws_ecr_repository" "apprepo1" {
# name                 = "docker-demo-app"
#image_tag_mutability = "MUTABLE"

#  image_scanning_configuration {
#   scan_on_push = false
#}
#}

