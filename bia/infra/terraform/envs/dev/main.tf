name: Terraform CI

on:
  pull_request:
    paths:
      - 'bia/infra/terraform/**'

jobs:
  terraform:
    runs-on: ubuntu-latest

    defaults:
      run:
        working-directory: bia/infra/terraform/envs/dev

    steps:
      - name: Checkout
        uses: actions/checkout@v4

      - name: Setup Terraform
        uses: hashicorp/setup-terraform@v3

      - name: Terraform Format
        run: terraform fmt -check

      - name: Terraform Validate
        run: terraform validate

      - name: Terraform Init
        run: terraform init

      - name: Terraform Plan
        run: terraform plan -input=false
        # Se você realmente tiver um terraform.tfvars, mantenha:
        # run: terraform plan -input=false -var-file="terraform.tfvars"

