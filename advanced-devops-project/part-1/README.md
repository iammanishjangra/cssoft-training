# 📘 Linux System Setup & Security – README.md

## 1. CREATE NEW SYSTEM USER (devopsuser)

### Command: 
```bash
sudo adduser devopsuser
```

Create a New User with Password and ask Basic Details about User.

### ADD TO SUDO GROUP (For Enabling Sudo Power)

```bash
sudo usermod -aG sudo devopsuser
```

### Screenshot

![Project Screenshot](./01%20create-user-and-configuration.png)

```bash
cat /etc/passwd | grep devopsuser
```

---

## 2. CONFIGURE PROPER PERMISSIONS

### Switch to new user

```bash
su - devopsuser
```

### Create project directory & set ownership

```bash
mkdir ~/advanced-devops-project
sudo chown -R devopsuser:devopsuser /home/devopsuser/projects
```

Give Full Permission to devopsuser User.

---

## 3. ENABLE AND CONFIGURE UFW FIREWALL

### Install UFW In System

```bash
sudo apt update
sudo apt install ufw -y
```

### Default policies

```bash
sudo ufw default deny incoming
sudo ufw default allow outgoing
```

### Allow required ports

```bash
sudo ufw allow 22
sudo ufw allow 80
sudo ufw allow 443
```

### Enable firewall

```bash
sudo ufw enable
```

### Check status

```bash
sudo ufw status numbered
```
### Screenshot

![Project Screenshot](./02%20install-ufw-allow-ports.png)


---

## 4. Install Git, Docker & Docker Compose

### Install Git

```bash
sudo apt install git -y
git --version
```

### Install Docker

```bash
sudo apt update
sudo apt install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

sudo tee /etc/apt/sources.list.d/docker.sources <<EOF
Types: deb
URIs: https://download.docker.com/linux/ubuntu
Suites: $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}")
Components: stable
Signed-By: /etc/apt/keyrings/docker.asc
EOF
```
### Screenshot

![Project Screenshot](./03%20add-docker-gpg-key.png)

```
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
```
### Screenshot

![Project Screenshot](./03_1%20install%20docker-and-docker-compose.png)
![Project Screenshot](./04%20install%20git.png)


---

## 5. ADD USER TO DOCKER GROUP

```bash
sudo usermod -aG docker devopsuser
newgrp docker
```
### Screenshot

![Project Screenshot](./05%20add%20user%20in%20docker%20and%20enable%20it.png)

---

## 6. ENABLE DOCKER SERVICE AS BOOT

```bash
sudo systemctl enable docker
sudo systemctl status docker
```
### Screenshot

![Project Screenshot](./05%20add%20user%20in%20docker%20and%20enable%20it.png)

---