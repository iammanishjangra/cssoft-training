# 🚀 Setting Up a Simple Web Server Using Docker and Nginx

## 📖 Project Overview

In this project, we create a Docker container that runs a basic web server using **Nginx**.

Nginx is one of the most popular open-source web servers. It is widely used for:
- Reverse proxy
- Load balancing
- Serving static websites
- Hosting web applications

By the end of this project, you will learn how to:
- Create a Docker image
- Run a Docker container
- Expose ports
- Serve a simple HTML webpage locally using Docker and Nginx

---

## 📌 Prerequisites

Before starting, make sure you have:

- Docker installed on your local machine
- Basic knowledge of Docker commands
- Git installed (optional, for cloning the repository)

---

## 📁 Project Structure

```
project-1/
│── Dockerfile
│── index.html
```

---

## 🛠️ Step 1: Clone the Repository

Clone the public repository:

```
git clone https://github.com/iammanishjangra/cssoft-training.git
```

Navigate to the project directory:

```
cd cssoft-training/docker-projects/project-1
```

---

## 🐳 Step 2: Build the Docker Image

Run the following command inside the project directory:

```
docker build -t <docker_image_name> .
```

Replace `<docker_image_name>` with your preferred image name.

Example:

```
docker build -t my-nginx-server .
```

---

## ▶️ Step 3: Run the Docker Container

After building the image, run the container:

```
docker run -d -p 80:80 <docker_image_name>
```

Example:

```
docker run -d -p 80:80 my-nginx-server
```

Explanation:
- `-d` → Run container in detached mode
- `-p 80:80` → Map local port 80 to container port 80

---

## 🌐 Step 4: Access the Application

Open your browser and visit:

```
http://localhost
```

You should now see your `index.html` page served using Nginx inside a Docker container.

---

## 🧾 Sample Dockerfile

Here is a simple example Dockerfile for this project:

```
FROM nginx:latest
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 80
```

---

## ✅ Conclusion

In this project, you successfully:

- Built a Docker image  
- Created and ran a Docker container  
- Exposed a port  
- Served a static webpage using Nginx  

This is a fundamental step toward learning containerization and deploying web applications using Docker.

---

## 👨‍💻 Author

Manish Kumar
Docker & DevOps Learning Project
