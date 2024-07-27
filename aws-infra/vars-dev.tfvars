// region
region = "ap-southeast-2"

// vpc
vpc_cidr = "10.0.0.0/16"

// network details
pub_cidr  = "10.0.1.0/24"
priv_cidr = "10.0.11.0/24"

// machine details
ec2_ami           = "ami-0035ee596a0a12a7b"
ec2_instance_type = "t2.micro" // sticking to free tier
// aws_machine_arch  =

// key pair
ec2_key_pair = "aws-lab-key-pair"

// storage
ebs_block = {
  device_name = "/dev/xvda",
  volume_size = "30", // sticking to free tier
  volume_type = "gp2"
}

// tag
env     = "dev"
repo    = "https://github.com/254In61/aws-ec2-on-aap"
