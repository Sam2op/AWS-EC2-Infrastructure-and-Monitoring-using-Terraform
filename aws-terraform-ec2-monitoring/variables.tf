variable "region" {
  description = "AWS region"
  default     = "ap-south-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "key_name" {
  description = "Terraform-EC2-Monitoring"
  type        = string
}

variable "project_name" {
  default = "terraform-ec2-monitoring"
}
