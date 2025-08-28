# variables.tf


variable "vpc_cidr" { type = string default = "10.0.0.0/16" }
variable "azs" {
description = "List of AZs to use (at least 2)"
type = list(string)
default = ["us-east-1a", "us-east-1b"]
}


variable "public_subnet_cidrs" { type = list(string) default = ["10.0.1.0/24", "10.0.2.0/24"] }
variable "private_subnet_cidrs" { type = list(string) default = ["10.0.11.0/24", "10.0.12.0/24"] }
variable "db_subnet_cidrs" { type = list(string) default = ["10.0.21.0/24", "10.0.22.0/24"] }


variable "admin_ip" {
description = "CIDR for SSH access (e.g., 1.2.3.4/32)"
type = string
default = "0.0.0.0/0"
}


variable "key_name" { type = string default = null }
variable "instance_type" { type = string default = "t3.micro" }
variable "ami_id" { type = string default = null }


variable "asg_min" { type = number default = 2 }
variable "asg_desired" { type = number default = 2 }
variable "asg_max" { type = number default = 4 }


variable "create_rds" { type = bool default = true }
variable "db_engine" { type = string default = "mysql" }
variable "db_engine_version" { type = string default = "8.0" }
variable "db_instance_class" { type = string default = "db.t3.micro" }
variable "db_allocated_storage" { type = number default = 20 }
variable "db_name" { type = string default = "appdb" }
variable "db_username" { type = string default = "appuser" }
variable "db_password" { type = string default = "ChangeMe123!" sensitive = true }
variable "db_multi_az" { type = bool default = true }


variable "store_db_password_in_ssm" { type = bool default = false }


variable "alert_emails" {
description = "List of email addresses to subscribe to SNS alerts"
type = list(string)
default = []
}
