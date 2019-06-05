variable "aws_region" {
  type = "string"
}

variable "cluster_name" {
  type = "string"
}

variable "engine" {
  type = "string"
}

variable "instance_class" {
  type = "string"
}

variable "publicly_accessible" {
  type = "string"
}

variable "vpc_id" {
  type = "string"
}

variable "backup_retention_period" {
  type = "string"
}

variable "preferred_backup_window" {
  type = "string"
}

variable "skip_final_snapshot" {
  type = "string"
}

variable "iam_database_authentication_enabled" {
  type = "string"
}

variable "apply_immediately" {
  type = "string"
}

variable "vpc_security_group_ids" {
  type = "list"
}

variable "availability_zones" {
  type = "list"
}

variable "ec2_subnet_ids" {
  type = "list"
}
