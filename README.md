# AWS EC2 Infrastructure & Monitoring using Terraform

## Project Overview
This project demonstrates how to provision and manage AWS infrastructure using **Terraform (Infrastructure as Code)** while implementing **basic monitoring and alerting** using AWS CloudWatch and Amazon SNS.

The infrastructure deploys an **EC2 instance running Nginx** using automated provisioning and includes monitoring to detect high CPU usage. The goal of this project is to simulate a **production-style cloud deployment workflow** with automation, monitoring, and clean resource management.

---

# Architecture

![Architecture Diagram](architecture-diagram.png)

**Architecture Flow**

Terraform → AWS Infrastructure → EC2 Instance → CloudWatch Monitoring → CloudWatch Alarm → SNS Email Alert

Components included:

- AWS Region (ap-south-1)
- VPC
- Public Subnet
- EC2 Instance
- Security Group
- IAM Role
- CloudWatch Monitoring
- CloudWatch Alarm
- Amazon SNS Notification

---

# Technologies Used

- Terraform
- AWS EC2
- AWS IAM
- AWS Security Groups
- AWS CloudWatch
- Amazon SNS
- Nginx Web Server
- Ubuntu EC2 Instance

---

# Infrastructure Components

## EC2 Instance
An Ubuntu EC2 instance is provisioned using Terraform and configured using **user-data scripts** to automatically install and start Nginx.

The instance hosts a simple web page to verify successful deployment.

---

## Security Group
The security group allows:

| Port | Purpose |
|-----|------|
| 22 | SSH Access |
| 80 | HTTP Web Traffic |

---

## IAM Role
An IAM role is attached to the EC2 instance to allow it to interact with **CloudWatch for monitoring metrics**.

---

## CloudWatch Monitoring
CloudWatch is configured to track EC2 metrics such as:

- CPU Utilization
- Instance Health
- Network Traffic

---

## CloudWatch Alarm
A CloudWatch alarm is configured to trigger when:

CPU Utilization > 70%

This simulates monitoring alerts for production systems.

---

## SNS Email Notification
When the alarm is triggered, **Amazon SNS sends an email notification** to the configured email address.

---

# Project Structure


AWS-EC2-Infrastructure-and-Monitoring-using-Terraform
│
├── main.tf
├── variables.tf
├── outputs.tf
├── provider.tf
├── terraform.tfvars
├── architecture-diagram.png
└── README.md


---

# Deployment Steps

## 1 Clone the Repository


git clone https://github.com/Sam2op/AWS-EC2-Infrastructure-and-Monitoring-using-Terraform.git

cd AWS-EC2-Infrastructure-and-Monitoring-using-Terraform


---

## 2 Initialize Terraform


terraform init


This downloads the AWS provider plugins required to provision resources.

---

## 3 Validate Configuration


terraform validate


---

## 4 Review Infrastructure Plan


terraform plan


This command shows the infrastructure Terraform will create.

---

## 5 Deploy Infrastructure


terraform apply


Type:


yes


Terraform will provision:

- EC2 instance
- Security group
- IAM role
- CloudWatch alarm
- SNS topic

---

# Access the Web Server

Once the deployment completes, open your browser:


http://<EC2-PUBLIC-IP>


You should see the **Nginx welcome page**.

---

# Destroy Infrastructure

To avoid unnecessary AWS charges:


terraform destroy


This removes all resources created by Terraform.

---

# Key Learning Outcomes

Through this project, I gained hands-on experience with:

- Infrastructure as Code (Terraform)
- Automated cloud infrastructure provisioning
- EC2 deployment and configuration
- CloudWatch monitoring and alerting
- SNS notifications
- Secure cloud architecture basics
- Resource lifecycle management

---

# Future Improvements

Possible improvements include:

- Terraform modularization
- Auto Scaling Groups
- Application Load Balancer
- Multi-AZ deployment
- CI/CD integration with Jenkins
- Docker container deployment

---

# Author

**Mohammed Sami Nadaf**

GitHub:  
https://github.com/Sam2op