data "aws_secretsmanager_random_password" "this" {
  count = var.secret_value == "" ? 1 : 0

  password_length     = 16
  exclude_punctuation = true
}

locals {
  secret_value = var.secret_value != "" ? var.secret_value : data.aws_secretsmanager_random_password.this[0].random_password
}

resource "aws_secretsmanager_secret" "this" {
  name                    = var.secret_name
  recovery_window_in_days = var.recovery_window_in_days
}

resource "aws_secretsmanager_secret_version" "this" {
  secret_id     = aws_secretsmanager_secret.this.id
  secret_string = local.secret_value
}
