data "aws_secretsmanager_secret" "user" {
  arn = aws_secretsmanager_secret.user.arn
}


data "aws_secretsmanager_secret_version" "creds" {
  secret_id = data.aws_secretsmanager_secret.user.arn
}