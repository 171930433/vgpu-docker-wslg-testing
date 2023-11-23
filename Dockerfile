FROM ubuntu:22.04

# ARG DEBIAN_FRONTEND=noninteractive
# ENV TZ=America/Detroit

RUN sed -i 's/http:\/\/archive.ubuntu.com/http:\/\/mirrors.tuna.tsinghua.edu.cn\/ubuntu/g' /etc/apt/sources.list

RUN apt update

RUN apt install -y mesa-utils

RUN apt install -y software-properties-common

COPY diagnostics.sh ./
RUN chmod +x ./diagnostics.sh

ENV DISPLAY=:0
ENV MESA_D3D12_DEFAULT_ADAPTER_NAME="NVIDIA"
ENV LD_LIBRARY_PATH=/usr/lib/wsl/lib

CMD ["./diagnostics.sh"]