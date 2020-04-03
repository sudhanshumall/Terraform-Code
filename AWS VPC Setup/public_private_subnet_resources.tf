# Public subnets

#public Subnet 1
resource "aws_subnet" "public_subnet_1" {
  vpc_id            = "${aws_vpc.main.id}"
  cidr_block        = "${var.VPC_PUBLIC_SUBNET1_CIDR_BLOCK}"
  availability_zone = "${data.aws_availability_zones.available.names[0]}"
  map_public_ip_on_launch = "true"  
  tags = {
    Name            = "${var.PROJECT_NAME}-vpc-public-subnet-1"
  }
}
#public Subnet 2
resource "aws_subnet" "public_subnet_2" {
  vpc_id            = "${aws_vpc.main.id}"
  cidr_block        = "${var.VPC_PUBLIC_SUBNET2_CIDR_BLOCK}"
  availability_zone = "${data.aws_availability_zones.available.names[1]}"
  map_public_ip_on_launch = "true"
  tags = {
    Name            = "${var.PROJECT_NAME}-vpc-public-subnet-2"
  }
}

# private subnet 1
resource "aws_subnet" "private_subnet_1" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "${var.VPC_PRIVATE_SUBNET1_CIDR_BLOCK}"
  availability_zone = "${data.aws_availability_zones.available.names[0]}"
  tags = {
    Name = "${var.PROJECT_NAME}-vpc-private-subnet-1"
  }
}
# private subnet 2
resource "aws_subnet" "private_subnet_2" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "${var.VPC_PRIVATE_SUBNET2_CIDR_BLOCK}"
  availability_zone = "${data.aws_availability_zones.available.names[1]}"
  tags = {
    Name = "${var.PROJECT_NAME}-vpc-private-subnet-2"
  }
}