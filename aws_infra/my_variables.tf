variable "my_env" {
    description = "this is a env for infra"
    type = string
}

variable "ami_id" {
  description = "this is a ami-id for ec2"
  type = string
}

variable "instance_type" {
  description = "this is the type of instance for ec2"
  type = string
}

variable "instance_count" {
  description = "this is the count of instance"
  type = number
}