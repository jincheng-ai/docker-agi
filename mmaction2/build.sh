#!/bin/bash
_version="main"
echo "构建mmaction2 镜像文件";
if [ ! -n "$1" ]; then
    version="$_version"
    echo "使用默认mmaction2版本: $_version"
else
    version="$1"
    echo "mmaction2版本: $version"
fi

if [ ! -d "mmaction2" ];then
    echo "git clone mmaction2"
else
    echo "清除已存在的mmaction2文件夹，重新下载"
fi
git clone -b $version https://github.com/open-mmlab/mmaction2.git mmaction2
docker build --build-arg version=$version -t jincheng_jcs/mmaction2:$version . |& tee ./build.log 2>&1