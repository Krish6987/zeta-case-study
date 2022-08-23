variable "ami"{
    type        = string
    description = "AMI for the EC2 instance"
}

variable "instance_type"{
    type        = string
    description = "EC2 Instance Type"
}

variable "key_name"{
    type        = string
    description = "SSH key name for EC2 instance"
}

variable "name"{
    type        = string
    description = "Name of the instance"
}

variable "subnet_id" { }
variable "vpc_security_group_ids" {
    type        = list(string)
}