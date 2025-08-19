#!/bin/sh
set -e

IMAGE_NAME="rust-warm"

# 1. 构建镜像
echo "🔨 Building docker image: $IMAGE_NAME ..."
docker build -t $IMAGE_NAME .

echo "✅ Build finished"