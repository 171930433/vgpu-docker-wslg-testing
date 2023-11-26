FROM ubuntu:22.04

# 使用清华源
RUN sed -i 's/http:\/\/archive.ubuntu.com/http:\/\/mirrors.tuna.tsinghua.edu.cn\/ubuntu/g' /etc/apt/sources.list

# 安装 mesa-utils
RUN apt update && apt install -y mesa-utils software-properties-common

