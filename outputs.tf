output "secret_string" {
  value     = aws_secretsmanager_secret_version.this.secret_string
  sensitive = true
}

output "secret_arn" {
  value = aws_secretsmanager_secret_version.this.arn
}
