resource "aws_lb_target_group" "acp-target-group" {
  name          = "acp-alb-tg"
  target_type   = "instance"
  port          = 80
  protocol      = "HTTP"
  vpc_id        = aws_vpc.acp-vpc.id
}

#creating ALB

resource "aws_lb" "application-lb" {
   name                 = "acp-alb"
   internal             = false
   ip_address_type      = "ipv4"
   load_balancer_type   = "application"
   security_groups      = [aws_security_group.acp-sec-group.id]
   subnets     = [aws_subnet.acp-public-sub1.id, aws_subnet.acp-public-sub2.id]
   enable_deletion_protection = false
  }
    
  #creating listener

 resource "aws_lb_listener" "alb-listener" {
  load_balancer_arn = aws_lb.application-lb.arn
  port              = "80"
  protocol          = "HTTP"
  
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.acp-target-group.arn
  }
}

#attach target group to alb

resource "aws_lb_target_group_attachment" "ec2-attach" {
  target_group_arn = aws_lb_target_group.acp-target-group.arn
  target_id        = aws_instance.Test-server1.id
  port             = 80
}

resource "aws_lb_target_group_attachment" "ec2-attach-2" {
  target_group_arn = aws_lb_target_group.acp-target-group.arn
  target_id        = aws_instance.Test-server2.id
  port             = 80
}

