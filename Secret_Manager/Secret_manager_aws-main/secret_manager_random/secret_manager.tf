

resource "random_password" "randomic" {
  length           = 8
  special          = true
  override_special = "_%@"
}

resource "aws_secretsmanager_secret" "user" {
  name                    = "Testing-sm-terraform"
  recovery_window_in_days = 30

  tags = local.common_tags
}

resource "aws_secretsmanager_secret_version" "password" {
  secret_id     = aws_secretsmanager_secret.user.id
  secret_string = <<EOF
   {
    "username": "gvc2010",
    "password": "${random_password.randomic.result}"
   }
EOF
}

resource "aws_s3_bucket" "bucket" {
  bucket = "your bkt"

}