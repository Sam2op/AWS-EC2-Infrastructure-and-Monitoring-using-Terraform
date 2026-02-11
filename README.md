# Terraform AWS Production Infrastructure

## Overview
Provisioned production-ready AWS infrastructure using Terraform.

## Architecture
- VPC with public subnet
- Internet Gateway
- Route Tables
- Security Groups
- EC2 Instance (Nginx auto-installed using user_data)
- IAM Role attached to EC2
- CloudWatch CPU alarm (>70%)
- SNS Email notification

## Tools Used
- Terraform
- AWS (EC2, VPC, IAM, CloudWatch, SNS)
- Nginx
- Git

## Features
- Infrastructure as Code
- Self-configuring EC2 instance
- Automated monitoring alerts
- Reproducible infrastructure
- Clean resource destruction using terraform destroy

## How to Deploy

terraform init  
terraform plan  
terraform apply  

## How to Destroy

terraform destroy

## Architecture Diagram
(Add a diagram later)

