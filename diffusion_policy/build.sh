#!/bin/bash
docker build --progress=plain -t jincheng_jcs/diffusion_policy:0.1.0 . |& tee ./build.log 2>&1