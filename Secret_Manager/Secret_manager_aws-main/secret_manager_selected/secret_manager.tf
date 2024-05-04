

resource "aws_secretsmanager_secret" "user" {
  name                    = "dev/flyembraer/variables"
  //recovery_window_in_days = 30

  tags = local.common_tags
}

resource "aws_secretsmanager_secret_version" "password" {
  secret_id     = aws_secretsmanager_secret.user.id

  for_each = var.key_value
  secret_string = <<EOF
   {
    "${each.key}": ${each.value}"
   }
EOF
}

