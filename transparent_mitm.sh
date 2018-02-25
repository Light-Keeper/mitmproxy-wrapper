docker run --rm -it \
      -w /app/workdir \
      --network host \
      -v `pwd`/.mitmproxy:/home/mitmproxy/.mitmproxy \
      -v `pwd`:/app \
      mitmproxy/mitmproxy:3.0.0 \
      mitmproxy \
      --anticache --ssl-insecure --showhost -p 8080 \
      --mode transparent \
      -s /app/script/entry.py
