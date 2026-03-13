# Flask React Auto Deploy Application

This project is a full-stack web application built using **Flask (backend)** and **React (frontend)**.
The application is containerized using **Docker** and automatically deployed to an **AWS EC2 instance using GitHub Actions CI/CD pipeline**.

This repository demonstrates practical **DevOps implementation including Docker containerization, CI/CD automation, and cloud deployment.**

## Pictures 
<img width="1905" height="961" alt="Screenshot 2026-03-12 152842" src="https://github.com/user-attachments/assets/0f5f1b14-8c37-46a0-a319-4c61fddf4444" />

<img width="1915" height="954" alt="Screenshot 2026-03-12 153658" src="https://github.com/user-attachments/assets/3779d266-a871-4433-9b97-7988f37f771e" />



# Tech Stack

**Backend**

* Python
* Flask

**Frontend**

* React

**Database**

* MongoDB

**DevOps Tools**

* Docker
* GitHub Actions
* AWS EC2
* Linux Shell Scripting

---

# Project Architecture

Developer → GitHub Repository → GitHub Actions CI/CD → Docker Build → Docker Container → AWS EC2 Deployment → Running Web Application

---

# Features

* Flask backend API
* React frontend interface
* MongoDB database integration
* Docker containerized application
* Automated deployment using GitHub Actions
* EC2 based production environment

---

# Project Structure

```
flask-react-auto-deploy-task
│
├── backend
│   └── Flask application
│
├── frontend
│   └── React application
│
├── scripts
│   └── deployment scripts
│
├── Dockerfile
├── deploy.sh
└── .github/workflows
    └── deploy.yml
```

---

# Local Setup

Clone the repository

```
git clone https://github.com/YOUR_USERNAME/flask-react-auto-deploy-task.git
```

Navigate to project

```
cd flask-react-auto-deploy-task
```

Build Docker image

```
docker build -t flask-react-app .
```

Run container

```
docker run -p 8080:8080 flask-react-app
```

Application will be available at

```
http://localhost:8080
```

---

# Deployment (CI/CD)

This project uses **GitHub Actions for automatic deployment**.

When code is pushed to the **main branch**, the pipeline will:

1. Trigger GitHub Actions workflow
2. Connect to AWS EC2 using SSH
3. Pull the latest code
4. Build Docker container
5. Run the application container

Workflow file location:

```
.github/workflows/deploy.yml
```

---

# GitHub Secrets Required

The following secrets must be configured in the repository settings:

| Secret Name | Description     |
| ----------- | --------------- |
| HOST        | EC2 Public IP   |
| USERNAME    | EC2 username    |
| SSH_KEY     | Private SSH key |

---

# Server Deployment Script

Deployment is handled using:

```
deploy.sh
```

This script performs the following steps:

* Pull latest code from GitHub
* Build Docker image
* Stop existing container
* Run new container

---

# Verify Running Container

To check running containers on EC2:

```
docker ps
```

---

# Application Access

After deployment, access the application using:

```
http://EC2_PUBLIC_IP:8080
```

---

# Author

Praneeth Reddy
DevOps Enthusiast | AWS | Docker | CI/CD | Linux
