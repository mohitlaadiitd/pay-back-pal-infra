# create a ecr repository to push docker images
resource "aws_ecr_repository" "backend_repo" {
  name = "paybackpal-ecr-backend-iac"

  encryption_configuration {
    encryption_type = "AES256"
  }
}

output "backend_ecr_url" {
  value       = aws_ecr_repository.backend_repo.repository_url
  description = "The URL of the backend ECR repository"
}

output "backend_ecr_name" {
  value       = aws_ecr_repository.backend_repo.name
  description = "The name of the backend ECR repository"
}