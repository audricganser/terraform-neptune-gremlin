resource "aws_neptune_cluster_instance" "cluster_instance" {
  identifier          = var.cluster_name
  cluster_identifier  = aws_neptune_cluster.default.id
  instance_class      = var.instance_class
  engine              = var.engine
  publicly_accessible = var.publicly_accessible
}

resource "aws_neptune_subnet_group" "default" {
  name       = "${var.cluster_name}-neptune-subnet-group"
  subnet_ids = var.ec2_subnet_ids
}

resource "aws_neptune_cluster" "default" {
  cluster_identifier                  = "${var.cluster_name}-identifier"
  engine                              = var.engine
  availability_zones                  = var.availability_zones
  backup_retention_period             = var.backup_retention_period
  preferred_backup_window             = var.preferred_backup_window
  skip_final_snapshot                 = var.skip_final_snapshot
  iam_database_authentication_enabled = var.iam_database_authentication_enabled
  apply_immediately                   = var.apply_immediately
  vpc_security_group_ids              = var.vpc_security_group_ids
  neptune_subnet_group_name           = aws_neptune_subnet_group.default.name
  final_snapshot_identifier           = "${var.cluster_name}-snapshot"
}

