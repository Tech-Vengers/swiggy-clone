# Swiggy Clone – DevSecOps Blue-Green Deployment on AWS ECS

## Overview
This project demonstrates a **production-grade DevSecOps pipeline**
for deploying a containerized Swiggy-Clone application using:

- Terraform (Infrastructure as Code)
- Jenkins (CI/CD)
- AWS ECS (EC2)
- ALB Blue-Green Deployment
- SonarQube, Trivy, OWASP Dependency Check

## Architecture
- Two ECS services: Blue & Green
- Two ALB target groups
- Jenkins controls traffic switching
- Zero downtime deployments

## Prerequisites
- AWS Account
- DockerHub account
- Jenkins Server
- Terraform >= 1.5

## Deployment Steps
1. Provision infra using Terraform
2. Configure Jenkins credentials
3. Commit code → Jenkins pipeline triggers
4. New version deployed to Green
5. Traffic switched automatically
6. Rollback supported instantly

## Security Gates
- Static Code Analysis (SonarQube)
- Dependency Scan (OWASP)
- Image Scan (Trivy)

## Rollback
Traffic can be reverted instantly by pointing ALB back to Blue.

## Clean Up
```bash
terraform destroy -auto-approve
