output "rds_endpoint" {
  value       = aws_db_instance.video_processor_rds.endpoint
  description = "Endpoint do RDS"
}

output "rds_username" {
  value       = aws_db_instance.video_processor_rds.username
  description = "Usuário master do RDS"
}

output "rds_db_name" {
  value       = aws_db_instance.video_processor_rds.name
  description = "Nome do banco de dados"
}

output "rds_password" {
  value       = aws_db_instance.video_processor_rds.password
  sensitive   = true
  description = "Senha do RDS"
}
