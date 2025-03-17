# key pair
resource "aws_key_pair" "deployer" {
  key_name = "tws-terra-key"
  public_key = file("D:\\terraform\\terra-key.pub")
}

# vpc

resource "aws_default_vpc" "default" {
  
}

# security group

resource "aws_security_group" "tws-security" {
  name = "allow ports"
  description = "this security grp is for open ports for ec2 instance"
  vpc_id = aws_default_vpc.default.id # interpolation

  # incoming traffic
  ingress {
    description = "this is for ssh"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = [ "0.0.0.0/0" ]
  }

  # outgoing traffic
  egress {
    description = "this is for outgoing internet"
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = [ "0.0.0.0/0" ]
  }
}

# ec2 instance

resource "aws_instance" "my-instance" {
    ami = "ami-00bb6a80f01f03502"
    instance_type = "t2.micro"
    key_name = aws_key_pair.deployer.key_name
    security_groups = [ aws_security_group.tws-security.name ]
    tags = {
      Name = "terra-automate"
    }
}