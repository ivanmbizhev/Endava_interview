# Endava_interview


The project started with the idea of creating several modules in separate instances. 
As per the requirements 3 instances - web server, load balancer and one database
I deployed a cluster of EC2 Instances in an Auto Scaling Group (ASG) and an Elastic Load Balancer (ELB). The ELB listens on port 80 and distributes load across the EC2 Instances, each of which runs the same "Hello, World" web server.
I tried to deploy MySQL on top of Amazon's Relational Database Service (RDS).

Unfortunately during the finishing stages the DB server was locked and I was not able to unlock it.

AS the finishing step it would have been to add the three instances as templates under one stack using the code:
source "aws_cloudformation_stack" "network" {
  name = "Application-stack"
  
but the attempt was unsuccessful.

I have used the following references:

#blog.gruntwork.io

#learn.hashicorp.com

#github.com

#docs.aws.amazon.com

#terraform.io/docs
