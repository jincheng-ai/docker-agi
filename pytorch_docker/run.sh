#!/bin/bash
python3 generate_build_script.py --os ubuntu --os-version 20.04 --python 3.9.1 --pytorch 1.12.1 --cuda 11.3 --cuda-flavor runtime
bash scripts/build_1.12.1_py3.9.1_cuda11.3.1_runtime_ubuntu20.04.sh