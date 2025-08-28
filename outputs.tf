# outputs.tf


output "alb_url" {
value = "http://${aws_lb.alb.dns_name}"
description = "App URL via ALB"
}


output "rds_endpoint" {
value = try(aws_db_instance.mysql[0].address, null)
description = "RDS endpoint"
}
