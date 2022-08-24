# ansible-roles
This is solution for 1st question in Part 1.

Write an ansible playbook for installing nginx, docker, logrotate. Ensure nginx container is running on port 8080 on host and log rotation is cleaning the logs of stdout of nginx container once it reaches 100mb. (Separate roles should be created for the tasks mentioned inline) 

The ansible-roles directory has 3 different respective for each role. Inside each role directory it has playbook in the tasks directory.
playbook inside docker directory is for installing and running docker.
playbook inside nginx directory is for running nginx as docker container on 8080 port and volume mounting the /var/log/nginx directory in the local for cleaning the logs with logrotate.
playbook inside logrotate directory is for installing logrotate and clean nginx logs if the size reaches 100mb.

# aws-iac
This is solution for 4th question in Part 2.

Create a Two tier application infrastructure any cloud provider (Preferably in AWS) using Terraform, components that should be included are mentioned below
a. VPC 
b. Security Group
c. Subnet (Public and Private)
d. NAT (Instance or service)
e. EC2 instance 
f. Terraform should use modules for reusability

The aws-iac directory has modules directory and .tf files. The main.tf files has script to create resources on AWS cloud. There are two modules ec2 and networking. The networking module create resources like vpc, private & public subnet, internet gateway, NAT gateway, route tables, route associations and security group with SSH as ingress and all the traffic to be allow for egress.
The SSH is enabled anywhere and it can be updated anytime in the module.

The ec2 module accepts the private subnet id and security group id from the networking module for creating the ec2 instance along with other parameter values.