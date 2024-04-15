#!/bin/bash
docker build -t jincheng_jcs/pytorch:1.12.1-cuda11.3-cudnn8-runtime . |& tee ./build.log 2>&1