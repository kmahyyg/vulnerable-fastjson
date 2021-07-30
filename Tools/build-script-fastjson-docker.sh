#!/bin/bash
set -x
cd 1262
docker build . -t ghcr.io/kmahyyg/fastjson:1.2.62-8u92 -f ../Dockerfile.8u92
docker build . -t ghcr.io/kmahyyg/fastjson:1.2.62-8u212 -f ../Dockerfile.8u212
cd ../1266
docker build . -t ghcr.io/kmahyyg/fastjson:1.2.66-8u92 -f ../Dockerfile.8u92
docker build . -t ghcr.io/kmahyyg/fastjson:1.2.66-8u212 -f ../Dockerfile.8u212
cd ../1268
docker build . -t ghcr.io/kmahyyg/fastjson:1.2.68-8u92 -f ../Dockerfile.8u92
docker build . -t ghcr.io/kmahyyg/fastjson:1.2.68-8u212 -f ../Dockerfile.8u212
