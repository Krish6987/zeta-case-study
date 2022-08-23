module "networking"{
    source="./modules/networking"
    vpc_cidr="152.31.0.0/16"
    name="zeta"
    public_subnets_cidr=["152.31.1.0/24", "152.31.3.0/24"]
    private_subnets_cidr=["152.31.2.0/24", "152.31.4.0/24"]
    availability_zones = ["us-east-2a", "us-east-2b"]
}

module "ec2"{
    source = "./modules/ec2"
    ami="ami-0960ab670c8bb45f3"
    instance_type="t2.micro"
    name="zeta"
    key_name="poc"
    vpc_security_group_ids=[module.networking.security_group_id]
    subnet_id=module.networking.public_subnet_id
}
