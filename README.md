# Terraform CI/CD Pipeline

Automated CI/CD pipeline for Terraform infrastructure using GitHub Actions.

This project demonstrates how Infrastructure as Code can be automatically checked and validated on every code change before deployment.

## Features

* Automated Terraform validation with GitHub Actions
* Runs on every push and pull request to `main`
* Checks Terraform formatting
* Initializes Terraform
* Validates Terraform configuration
* Uses Infrastructure as Code best practices

## Infrastructure Created

This Terraform project provisions:

* AWS VPC
* DNS support
* DNS hostnames
* Tagged infrastructure resources
* Terraform outputs

## GitHub Actions Workflow

The pipeline automatically runs the following commands:

```bash
terraform fmt -check
terraform init -backend=false
terraform validate
```

### Workflow Steps

1. Checkout repository
2. Install Terraform
3. Check Terraform formatting
4. Initialize Terraform
5. Validate Terraform configuration

## Project Structure

```text
terraform-ci-cd-pipeline/
├── .github/
│   └── workflows/
│       └── terraform.yml
├── main.tf
├── outputs.tf
├── .gitignore
└── README.md
```

## Example GitHub Actions Result

After pushing changes, the GitHub Actions workflow should complete successfully with:

* Terraform Format Check ✅
* Terraform Init ✅
* Terraform Validate ✅

You can add a screenshot of the successful Actions run below this section.

## Why This Project Matters

This project demonstrates:

* Terraform fundamentals
* CI/CD pipelines
* GitHub Actions
* AWS infrastructure automation
* Infrastructure validation before deployment

These are common skills used in cloud engineering and DevOps roles.

## Future Improvements

Planned enhancements:

* Add AWS credentials using GitHub Secrets
* Add `terraform plan`
* Add `terraform apply`
* Add remote Terraform state in S3
* Add architecture diagram
* Add support for multiple environments (`dev`, `prod`)
* Add Terraform linting with `tflint`

## Technologies Used

* Terraform
* AWS
* GitHub Actions
* YAML

---

Created by Zonique Foyle
