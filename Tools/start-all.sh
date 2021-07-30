#!/bin/bash
set -x
docker run --name fj1262_1 -d -p 8092:8092 ghcr.io/kmahyyg/fastjson:1.2.62-8u92
docker run --name fj1262_2  -d -p 18092:8092 ghcr.io/kmahyyg/fastjson:1.2.62-8u212
docker run --name fj1266_1  -d -p 8096:8096 ghcr.io/kmahyyg/fastjson:1.2.66-8u92
docker run --name fj1266_2  -d -p 18096:8096 ghcr.io/kmahyyg/fastjson:1.2.66-8u212
docker run --name fj1268_1  -d -p 8098:8098 ghcr.io/kmahyyg/fastjson:1.2.68-8u92
docker run --name fj1268_2  -d -p 18098:8098 ghcr.io/kmahyyg/fastjson:1.2.68-8u212