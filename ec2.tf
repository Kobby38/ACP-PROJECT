resource "aws_instance" "Test-server1" {
  ami                         = "ami-05a8c865b4de3b127" # eu-west-2
  instance_type               = "t2.micro"
  key_name                    = "Good-kp"
  vpc_security_group_ids      = [aws_security_group.acp-sec-group.id]
  associate_public_ip_address = true
  subnet_id                   = aws_subnet.acp-public-sub1.id
  user_data                   = <<-EOF
#! /bin/bash
sudo apt-get update
sudo apt-get install -y apache2
sudo systemctl start apache2
sudo systemctl enable apache2
echo "The page was created by Kwabena Opoku" | sudo tee /var/www/html/index.html
EOF

  tags = {
    Name = "Test-server1"
    OS   = "UBUNTU"
  }
}

resource "aws_instance" "Test-server2" {
  ami                         = "ami-05a8c865b4de3b127" # eu-west-2
  instance_type               = "t2.micro"
  key_name                    = "Good-kp"
  vpc_security_group_ids      = [aws_security_group.acp-sec-group.id]
  associate_public_ip_address = true
  subnet_id                   = aws_subnet.acp-public-sub2.id
  user_data                   = <<-EOF
#! /bin/bash
sudo apt-get update
sudo apt-get install -y apache2
sudo systemctl start apache2
sudo systemctl enable apache2
echo "I will get a wonderful devops job by December" | sudo tee /var/www/html/index.html
EOF

  tags = {
    Name = "Test-server2"
    OS   = "UBUNTU"
  }
}