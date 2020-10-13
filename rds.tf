provider "aws" {
  region = "ap-south-1"
  profile = "sachin"
}
resource "aws_db_instance" "mysql" {
  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "5.7.30"
  identifier           =  "sac-database"
  instance_class       = "db.t2.micro"
  name                 = "sachinjangid2kdatabase"
  username             = "admin"
  password             = "sachinjangid"
  parameter_group_name = "default.mysql5.7"
  iam_database_authentication_enabled = true
  publicly_accessible = true
  skip_final_snapshot = true
}
