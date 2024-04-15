FROM cnstark/pytorch:1.12.1-py3.9.1-cuda11.3.1-runtime-ubuntu20.04
RUN apt update && apt install --no-install-recommends -y libosmesa6-dev libgl1-mesa-glx libglfw3 patchelf
RUN apt-get clean \
    && rm -rf /var/lib/apt/lists/*

COPY conda_environment.txt conda_environment.txt
COPY requirments.txt requirments.txt

# 跳过选时区（无交互模式）
# 有部分依赖安装需要通过cmake编译
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install -y cmake
RUN apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# 使用conda安装的部分，拆解成pip安装和其实安装方式，避免在docker环境中安装conda
RUN pip install -r conda_environment.txt

# 将迟宬的environment文件拆解，一部分明确使用pip安装的，使用pip，配置在requirements.txt
RUN pip install -r requirments.txt

# pytorch3d
RUN pip install --no-index --no-cache-dir pytorch3d -f https://dl.fbaipublicfiles.com/pytorch3d/packaging/wheels/py39_cu113_pyt1121/download.html
# llvm-openmp用于cpuonly情况下的pytorch bug，此处不处理
# 预编译版本llvm-openmp需要使用conda安装
