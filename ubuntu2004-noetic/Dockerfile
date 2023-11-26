FROM ignaciovizzo/ros_in_docker:noetic

# 使用清华源
RUN sed -i 's/http:\/\/archive.ubuntu.com/http:\/\/mirrors.tuna.tsinghua.edu.cn\/ubuntu/g' /etc/apt/sources.list

# Add any additional dependencies here:
RUN apt-get update && apt-get install --no-install-recommends -y \
    mesa-utils \
    rsync \
    && rm -rf /var/lib/apt/lists/*

# $USER_NAME Inherited from .base/Dockerfile
# WORKDIR /home/$USER/ros_ws

