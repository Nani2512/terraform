#create vpc 
resource "aws_vpc" "cust" {
cidr_block = ("10.0.0.0/16")
tags = {
  name="my vpc"
}

}
#create IG and attach to vpc
resource "aws_internet_gateway" "cust" {
    vpc_id = aws_vpc.cust.id
    tags = {
      name="myIG"
    }
  
}
# create subnets public
resource "aws_subnet" "public" {
    vpc_id = aws_vpc.cust.id
  cidr_block = ("10.0.1.0/24")
  availability_zone = ("us-east-1a")
  tags = {
    name="public subnet"
  }
}
#create private subnet
resource "aws_subnet" "private" {
vpc_id = aws_vpc.cust.id
  cidr_block = ("10.0.2.0/24")
  availability_zone = ("us-east-1b")
  tags = {
    name="private subnet"
  }
}
#creaate route table and attach to the IG and edit routes
resource "aws_route_table" "name" {
vpc_id = aws_vpc.cust.id

route {
    gateway_id = aws_internet_gateway.cust.id
    cidr_block = ("0.0.0.0/0")

}
}
#subnet association and add subnet into route
resource "aws_route_table_association" "cust" {
    route_table_id = aws_route_table.name.id
    subnet_id = aws_subnet.public.id
  
}
#create security groups
resource "aws_security_group" "allowint" {
    name = "allowint"
    vpc_id = aws_vpc.cust.id
    tags = {
      name="my sg"
    }
    ingress {
        description = "tls from vpc"
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks =["0.0.0.0/0"]
    }

    ingress {
        description="tls from vpc"
        from_port= 22
        to_port= 22
        protocol="tcp"
        cidr_blocks= ["0.0.0.0/0"]
    }
egress {
    description="outboand rule"
    from_port= 0
    to_port= 0
    protocol="-1"
    cidr_blocks= ["0.0.0.0/0"]
}  


}
