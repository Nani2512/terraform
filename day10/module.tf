module "ec2" {
    source = "../day1"
    ami="ami-066784287e358dad1"
    type = "t2.micro"
    key = "mykeypair" 
}