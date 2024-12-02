terraform {
  source = "${get_path_to_repo_root()}/module/ec2"
}

locals {
  env_vars = read_terragrunt_config("${get_terragrunt_dir()}/env.hcl")
}

inputs = {
  instance_type  = "t2.micro"
  instance_name = "ami-830c94e3"
  instance_tag_name = "terragrunt-${local.env_vars.locals.env}"
  instance_region = local.env_vars.locals.region
  instance_description = "${local.env_vars.locals.ec2_name}. Env: ${local.env_vars.locals.env}"
}