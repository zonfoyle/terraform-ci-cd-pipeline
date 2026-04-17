# Terraform CI/CD Pipeline

This project demonstrates a CI/CD pipeline for Terraform infrastructure using GitHub Actions.

On every push or pull request to the `main` branch, the pipeline automatically:

- Checks Terraform formatting
- Initializes Terraform
- Validates the Terraform configuration

## Infrastructure

This project provisions:

- AWS VPC
- DNS support and hostnames
- Terraform outputs

## GitHub Actions Workflow

The pipeline runs the following commands:

```bash
terraform fmt -check
terraform init -backend=false
terraform validate