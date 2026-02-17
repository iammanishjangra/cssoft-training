# SETTING UP A SIMPLE WEB SERVER
In this project, We create a Docker container that runa basic web server using Nginx.
Nginx is one of the most popular open-source web server. Its helps for reverse-proxy, load balancing, serve our multi web documents like a website etc. 
End of the project, we learned how to create and run a docker container and expose port. We make a folder and add index.html file inside. With the help of nginx, we serve this on our local machine browser using docker conaitner.

## PREREQUISITE
- Install Docker On Local Machine.
- Create  A Project Directory like project-1/
- Write a Dockerfile for creating Docker Image and run as a Container.

### RUN COMMANDS
First of All We Clone the Public Repository on Local Machine.
'git clone [/URL/](https://github.com/iammanishjangra/cssoft-training/edit/main/docker-projects/project-1/)'

Then Run the Build Command
'docker build -t <docker_image_name> .'

After Created A Docker Image, we Run as A Docker Container
'docker run -d -p 80:80 <docker_image_name>'

Finally Run https://localhost in Any Browser.
