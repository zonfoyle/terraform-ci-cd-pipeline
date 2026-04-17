# Terraform CI/CD Pipeline

This project uses GitHub Actions to automatically validate Terraform code every time changes are pushed to the repository or a pull request is opened.

The goal was to create a simple CI/CD workflow that catches Terraform issues early before infrastructure changes are deployed.

## What the Pipeline Does

Every time code is pushed to `main` or included in a pull request, GitHub Actions runs:

```bash
terraform fmt -check
terraform init -backend=false
terraform validate
```

These checks make sure the Terraform code is formatted correctly, can initialize successfully, and does not contain syntax or configuration errors.

## Why I Chose These Checks

I started with these three commands because they provide the biggest value with the least complexity:

- `terraform fmt -check` keeps the Terraform files consistently formatted
- `terraform init -backend=false` verifies that Terraform can initialize
- `terraform validate` catches mistakes before deployment

I did not include `terraform plan` yet because that requires AWS credentials. I wanted the first version of the pipeline to work without storing secrets in GitHub.

## Why GitHub Actions?

I chose GitHub Actions because the project is already hosted on GitHub, so it was the easiest way to build a CI/CD pipeline without setting up another tool like Jenkins.

GitHub Actions works well for smaller projects and is quick to configure. Jenkins would allow more customization, but would require more setup and maintenance.

## Tradeoffs

There were a few tradeoffs in the current version of the pipeline:

- Using `terraform init -backend=false` means the workflow can run without AWS credentials, but it does not test a remote backend
- Leaving out `terraform plan` keeps the setup simple, but it also means the workflow does not show exactly what infrastructure changes would happen
- GitHub Actions is easy to use and maintain, but tools like Jenkins provide more advanced features

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

## What This Project Demonstrates

This project demonstrates:

- Terraform fundamentals
- Infrastructure as Code
- CI/CD with GitHub Actions
- Automated validation of infrastructure changes
- Basic AWS infrastructure managed through Terraform

## Future Improvements

Some next steps I plan to add:

- Store AWS credentials securely with GitHub Secrets
- Add `terraform plan`
- Add `terraform apply`
- Configure remote Terraform state in S3
- Add support for multiple environments such as `dev` and `prod`
- Add `tflint` for additional Terraform linting

## Technologies Used

- Terraform
- AWS
- GitHub Actions
- YAML
