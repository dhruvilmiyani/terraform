
resource "aws_instance" "my-instance" {
    count = var.instance_count
    ami = var.ami_id
    instance_type = var.instance_type
    # key_name = aws_key_pair.deployer.key_name
    # security_groups = [ aws_security_group.tws-security.name ]
    tags = {
      Name = "${var.my_env}-aws-terraform-instance-0152" 
    }
}