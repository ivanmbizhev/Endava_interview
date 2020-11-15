This project consists of creating 3 instances on AWS - web server, load balancer and one database

I deployed a cluster of EC2 Instances in an Auto Scaling Group (ASG) and an Elastic Load Balancer (ELB). The ELB listens on port 80 and distributes load across the EC2 Instances, each of which runs the same "Hello, World" web server.

The script deploys MySQL on top of Amazon's Relational Database Service (RDS).

As a possible final step I would try to add the three instances as templates under one stack using the code:
source "aws_cloudformation_stack" "network" {
  name = "Application-stack"
  
  Another way of doing this would be to create a Terrafrom:Cloudfromation:Infrastructures. 
  This would mean to create a Terraform server in which to run Json type templates.
