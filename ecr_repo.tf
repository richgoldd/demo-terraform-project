#ECR Repo

resource "aws_ecr_repository" "apprepo" {
  name                 = "argorepo"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}
