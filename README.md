# DevOps Capstone Project - E-Commerce Microservices Platform

## Project Overview

This project demonstrates the deployment of a microservices-based E-Commerce application using modern DevOps tools and practices.

The application consists of:

- React Frontend
- Product Service (Node.js)
- Order Service (Node.js)
- Inventory Service (Node.js)
- MySQL Database

All services are containerized using Docker and deployed on a Kubernetes cluster.

---

## Technologies Used

- AWS EC2
- Ubuntu
- Docker
- Docker Hub
- Kubernetes (kubeadm)
- Calico CNI
- MySQL
- React
- Node.js
- Jenkins
- Terraform
- Ansible
- Prometheus
- Grafana

---

## Project Architecture

Developer

↓

GitHub

↓

Jenkins CI/CD

↓

Docker Images

↓

Docker Hub

↓

Kubernetes Cluster

↓

Frontend

↓

Product Service

↓

Order Service

↓

Inventory Service

↓

MySQL Database

↓

Prometheus & Grafana

---

## Docker Images

- sushilsaroya/frontend
- sushilsaroya/product-service
- sushilsaroya/order-service
- sushilsaroya/inventory-service

---

## Kubernetes Components

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
- ClusterIP Services
- NodePort Services

---

## Features

- Add Products
- View Products
- Create Orders
- View Orders
- Inventory Management
- Persistent MySQL Storage

---

## Project Structure

```
frontend/
product-service/
order-service/
inventory-service/
kubernetes/
Jenkinsfile
schema.sql
README.md
```

---

## Deployment

Build Docker Images

```
docker build
docker push
```

Deploy to Kubernetes

```
kubectl apply -f kubernetes/
```

Verify

```
kubectl get pods -n ecommerce
kubectl get svc -n ecommerce
```

---

## Application

Frontend

```
http://<Worker_Public_IP>:30080
```

---

## Author

Sushil Saroya
