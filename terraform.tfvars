aws_region                          = "us-west-2" #Ex. us-west-2

#AWS Neptune
cluster_name                        = "my_cluster" # Ex. my_cluster
engine                              = "neptune" # neptune
instance_class                      = ""
publicly_accessible                 = "" # Bool
vpc_id                              = ""
backup_retention_period             = "1" # Int
preferred_backup_window             = "" # Ex. 07:00-09:00
skip_final_snapshot                 = "" # Bool
iam_database_authentication_enabled = "" # Bool
apply_immediately                   = "" # Bool
availability_zones                  = [""]
vpc_security_group_ids              = [""]
ec2_subnet_ids                      = [""]
