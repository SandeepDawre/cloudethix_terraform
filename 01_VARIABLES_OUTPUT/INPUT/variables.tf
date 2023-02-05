//For IAM USER

variable "iam_user_name" {
  type = string 
}
variable "iam_user_path" {
  type = string 
}

//For EC2 Instance

variable "ami_id" {
  type = string 
}
variable "instance_type" {
  type = string 
}

//For SG

variable "sg_name" {
  type = string 
}
variable "vpc_id" {
  type = string 
}