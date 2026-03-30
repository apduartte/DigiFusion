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

      - name: Debug
        run: |
          pwd
          ls -la

      - name: Terraform Init
        run: terraform init

      - name: Terraform Plan
        run: terraform plan -input=false -var-file="terraform.tfvars"