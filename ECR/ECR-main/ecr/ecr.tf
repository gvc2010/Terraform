resource "aws_ecr_repository" "ecr" {
  name                 = element(var.ecr_repo_name, count.index)
  image_tag_mutability = "MUTABLE"
  count                = 10

  image_scanning_configuration {
    scan_on_push = true
  }

}