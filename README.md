# DevOps Capstone Project - E-Commerce Microservices Platform

## Overview

This project demonstrates a complete DevOps implementation of an E-Commerce Microservices application using Docker, Jenkins, Kubernetes, Terraform, and Ansible.

## Application Components

- React Frontend
- Product Service (Node.js)
- Order Service (Node.js)
- Inventory Service (Node.js)
- MySQL Database

## Technologies Used

- AWS EC2
- Ubuntu 24.04
- Docker
- Docker Hub
- Jenkins
- Kubernetes
- Terraform
- Ansible
- React
- Node.js
- MySQL

## Project Structure

```
frontend/
product-service/
order-service/
inventory-service/
kubernetes/
terraform/
ansible/
Jenkinsfile
README.md
schema.sql
```

## Docker Images

- sushilsaroya/frontend
- sushilsaroya/product-service
- sushilsaroya/order-service
- sushilsaroya/inventory-service

## Kubernetes Resources

- Namespace
- Secret
- ConfigMap
- Persistent Volume
- Persistent Volume Claim
- MySQL Deployment
- Product Deployment
- Order Deployment
- Inventory Deployment
- Frontend Deployment
- Services

## Deployment Steps

Build Images

```bash
docker build
docker push
```

Deploy Application

```bash
kubectl apply -f kubernetes/
```

Verify

```bash
kubectl get pods -n ecommerce
kubectl get svc -n ecommerce
```

## Application URL

```
http://<Worker_Public_IP>:30080
```

## Author

**Sushil Kumar**
