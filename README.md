Follow https://developer.hashicorp.com/terraform/tutorials/aws-get-started/aws-build

To run terragrunt:

- set env vars 
  - `export AWS_ACCESS_KEY_ID=xxxxxxx`
  - `export AWS_SECRET_ACCESS_KEY=xxxxx`
- go to env directory
  - `cd envs/sbx`
  - `terragrunt plan` # if you want dry run
  - `terragrunt apply`
