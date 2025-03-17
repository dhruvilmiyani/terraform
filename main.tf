module "dev-app" {
  source = "./aws_infra"
  my_env = "dev"
  instance_type = "t2.micro"
  ami_id = "ami-00bb6a80f01f03502"
  instance_count = 1
}

module "staging-app" {
  source = "./aws_infra"
  my_env = "staging"
  instance_type = "t2.medium"
  ami_id = "ami-00bb6a80f01f03502"
  instance_count = 2
}

module "production-app" {
  source = "./aws_infra"
  my_env = "production"
  instance_type = "t2.large"
  ami_id = "ami-00bb6a80f01f03502"
  instance_count = 3
}