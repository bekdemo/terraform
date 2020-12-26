aws_region = "us-east-2"

#my-key-values
my_key_name  = "ec2-user-publickey"
my_publickey = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDhMxovjv2/WVWdfsfknC+4dWPpKuL7EIXwUHQo5zw3kTMIUpt1PZ5x/1TNGeJmWWhdqA5MQDxCHQAeVCKkm+Illmq81s72Y1pY4q8Y0/esJAxrUCBV41bFlMOTi2cEKUL5FSwDsIJq/n1lQQXTm4vvKMf51xXEi76ApY+aP0uCfslgYpnNsW0rhHmA7JoCyXSMwnfRE92FfruZ6jdZwinTwbXBxJGAhg7xl4i+cFhT/2tiavGIrdt0tf4z+iCVrA8I4ELJSLEHZkp54R7HPORZUcSpMqbralrDGPctUOf6QC3/fptr/on6KrD3dU0xh1ZCRw0Z/9FZt3ArRiBHyp6ZqUxWkie0AYyVJvsHxYUhB1DaVQKrsptcDV5XC8qr4EBsZrAKX8mRTCyKY5k0rbfXX0Mu9tQFhP9l1Fs1gQ4r7yIfrzQK62AMyOxbKOjSzyckpnfSRFMKt05CilWKw1d9Y6NSnc89GlceJo8MYDxCuhv3JuR/h4CEz+Y+x1f3/3U= beka@bekas-MacBook-Pro.local"


#my-eip-values
eip_count = 1
vpc_bool  = "true"

#my-vpc-values

my_vpc_name             = "test-vpc"
my_vpc_cidr             = "10.0.0.0/16"
my_vpc_azs              = ["us-east-2a", "us-east-2b"]
my_vpc_private_subnets  = ["10.0.1.0/24"]
my_vpc_public_subnets   = ["10.0.100.0/24"]
my_vpc_nat_gateway_bool = "false"
my_vpc_tags             = { Name = "test-vpc"}
my_public_subnets_tags  = { Name = "test-public-subnet-a" }
my_private_subnets_tags = { Name = "test-private-subnet-a" }
my_igw_tags             = { Name = "test-igw" }

#my-sg-values

my_sg_name       = "my-sg"
sg_description   = "Security group for web-server and ssh access"
sg_ingress_cidr  = ["0.0.0.0/0"]
sg_ingress_rules = ["https-443-tcp", "http-80-tcp", "ssh-tcp", "http-8080-tcp"]
sg_egress_cidr   = ["0.0.0.0/0"]
sg_egress_rules  = ["all-all"]

#my-ec2-values

my_ec2_name = "Test-server"
ec2_count   = 1
ec2_type    = "t2.medium" 
ec2_tags    = { Name = "Test-server"}


#my-data-source-values

most_recent_bool = "true"
ami_tag_type     = "name"
ami_value        = ["amzn2-ami-hvm-2.0.*-x86_64-gp2"]
ami_owner        = ["amazon"]







