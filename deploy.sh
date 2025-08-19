#!/bin/sh
set -e

IMAGE_NAME="rust-deploy"

# 1. 构建镜像
echo "🔨 Building docker image: $IMAGE_NAME ..."
docker build -f Dockerfile.deploy -t $IMAGE_NAME .

echo "✅ Build finished"