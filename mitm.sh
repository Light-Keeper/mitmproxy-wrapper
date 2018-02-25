#!/bin/bash
DIRS="-v `pwd`/.mitmproxy:/home/mitmproxy/.mitmproxy -v `pwd`:/app"
#NETWORK="--network host"
NETWORK="-p 8080:8080"
DOCKER="docker run --rm -it -w /app/workdir ${NETWORK} ${DIRS} mitmproxy/mitmproxy:3.0.0"

PARAMS='--ssl-insecure --showhost -p 8080'
#TRANSPARENT='--mode transparent'
SCRIT='-s /app/script/entry.py'

FULL="${DOCKER} mitmproxy ${PARAMS} ${TRANSPARENT} ${SCRIT}"
echo ${FULL}
${FULL}
