# create ecr repository
resource "aws_ecr_repository" "frontend_repo" {
  name = "paybackpal-ecr-frontend-iac"

  encryption_configuration {
    encryption_type = "AES256"
  }
}

output "frontend_ecr_url" {
  value       = aws_ecr_repository.frontend_repo.repository_url
  description = "The URL of the frontend ECR repository"
}