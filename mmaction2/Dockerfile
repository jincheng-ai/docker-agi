ARG version="main"
FROM jincheng_jcs/pytorch:1.12.1-cuda11.3-cudnn8-runtime


COPY requirements.txt requirements.txt
RUN  pip install -r requirements.txt

# MMLab环境
RUN pip install -U openmim
RUN mim install mmengine
RUN mim install mmcv
RUN mim install mmdet
RUN mim install mmpose

# 从源码安装mmaction2
RUN git clone https://github.com/open-mmlab/mmaction2.git /mmaction2
WORKDIR /mmaction2
RUN mkdir -p /mmaction2/data
ENV FORCE_CUDA="1"
RUN echo "checkout mmaction version:" ${version}
RUN git checkout ${version}
# RUN pip install cython --no-cache-dir
RUN pip install --no-cache-dir -e .

RUN pip install jupyter

RUN mkdir -p /workspace/mmaction2
RUN mkdir -p /workspace/outputs
RUN mkdir -p /workspace/weights
RUN mkdir -p /workspace/data
RUN cd /workspace
WORKDIR /workspace