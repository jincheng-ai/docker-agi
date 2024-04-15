FROM pytorch/pytorch:1.12.1-cuda11.3-cudnn8-runtime

# 安装基础环境
RUN apt-get update && apt-get install --no-install-recommends -y git zip unzip
RUN apt-get clean \
    && rm -rf /var/lib/apt/lists/*
