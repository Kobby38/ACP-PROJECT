#create our rds database using terraform
resource "aws_db_instance" "myrds" {
  engine              = "mysql"
  engine_version      = "8.0.28"
  instance_class      = "db.t3.micro"
  allocated_storage   = 200
  storage_type        = "gp2"
  db_name             = "mydb"
  username            = "admin"
  password             = "password123"
  publicly_accessible  = false
  skip_final_snapshot  = true
  port                 = "3306"
    
  
  tags = {
    Name = "myrds"
  }
}


  
