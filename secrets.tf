resource "aws_secretsmanager_secret" "ggg" {
  name = "bermtec_secret"
}


resource "aws_secretsmanager_secret_version" "example" {
  secret_id     = aws_secretsmanager_secret.ggg.id
  secret_string = "scsdcsdsd"
}