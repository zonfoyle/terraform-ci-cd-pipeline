output "vpc_id" {
  description = "ID of the CI/CD project VPC"
  value       = aws_vpc.main.id
}