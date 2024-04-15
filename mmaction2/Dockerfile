ARG version="main"
ENV MMACTION_VERSION=$version
FROM jincheng_jcs/pytorch:1.12.1-cuda11.3-cudnn8-runtime

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
RUN echo "checkout mmaction version:" ${MMACTION_VERSION}
RUN git checkout ${MMACTION_VERSION}
# RUN pip install cython --no-cache-dir
RUN pip install --no-cache-dir -e .