rm -rf .terraform*
export TF_VAR_db_remote_state_bucket=sample-hallo-backend
export TF_VAR_db_remote_state_key=code/terraform.tfstate

terraform init
terraform validate
terraform plan
terraform apply --auto-approve