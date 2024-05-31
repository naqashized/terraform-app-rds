rm -rf .terraform*
export TF_VAR_db_username=root
export TF_VAR_db_password=root3000

terraform init
terraform validate
terraform plan
terraform apply --auto-approve