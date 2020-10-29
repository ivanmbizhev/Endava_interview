# Endava_interview


The project started with the idea of creating several modules in separate instances. 
As per the requirements 3 instances - web server, load balancer and one database
I deployed a cluster of EC2 Instances in an Auto Scaling Group (ASG) and an Elastic Load Balancer (ELB). The ELB listens on port 80 and distributes load across the EC2 Instances, each of which runs the same "Hello, World" web server.
I tried to deploy MySQL on top of Amazon's Relational Database Service (RDS).

Unfortunately during the finishing stages the DB server was locked and I was not able to unlock it.


During my research on creating an Application Stack I discovered that one of the methods in doing so is to use CloudFormation Resource Type Provider for Terraform or build a Cloudsoft::Terraform::Infrastructure. 

With this Infrastructure I would have been able to deploy my code if it had worked.


I have used the following references:

blog.gruntwork.io
learn.hashicorp.com
github.com
