# AWS IaC

Terraform scripts that create a Two tier application infrastructure in AWS using Terraform, components that will be created are mentioned below
1. VPC 
2. Security Group
3. Subnet (Public and Private)
4. NAT (Instance or service)
5. Internet Gateway
6. EC2 instance 

Terraform module which creates AWS resources.

### Networking Module - [Readme](/modules/networking/README.md)

### EC2 Module - [Readme](/modules/ec2/README.md)

## Usage

## Testing
The infrastructure can be created with the following commands

```
  terraform init
  terraform plan
  terraform apply
```