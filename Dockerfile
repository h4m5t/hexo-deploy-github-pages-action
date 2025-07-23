# Use Node.js container image
# 自动部署报错了，将Dockerfile中的基础镜像从 node:16 升级到更新的版本
FROM node:18

# Install Git
RUN apt-get update && apt-get install -y git

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
