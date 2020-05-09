# mnist-docker
CloudML Assignment 2 - MNIST with Docker

# Steps to Run
1) Load Vagrant VM (ubuntu:latest) with docker installed and ssh into it: - vagrant up, vagrant ssh
2) Update params of the model in the docker file, python code
3) Create docker image with new tag: - docker build -t mnist-docker:tag .
4) (Optional) Push to Docker Hub: docker login --username=username , docker push mnist-docker:tag
5) Run the app to install dependencies and start training: docker run -p 8001:8001 -it mnist-docker:tag
6) See logs on the terminal
