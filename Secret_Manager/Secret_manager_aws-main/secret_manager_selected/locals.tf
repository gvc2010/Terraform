locals {

  common_tags = {
    owner = "dev"
    by    = "dev-team"
  }

  aws_region = "us-east-1"

  creds = jsondecode(data.aws_secretsmanager_secret_version.creds.secret_string)


}