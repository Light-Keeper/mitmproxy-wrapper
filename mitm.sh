#!/bin/bash
DOCKER="docker run --rm -it -v `pwd`/.mitmproxy:/home/mitmproxy/.mitmproxy -v `pwd`:/app -p 8080:8080 -w /app/workdir mitmproxy/mitmproxy:3.0.0"
PARAMS=' -s /app/script/entry.py'

FULL="${DOCKER} mitmproxy ${PARAMS}"
echo ${FULL}
${FULL}
