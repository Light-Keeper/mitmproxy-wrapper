docker run --rm -it \
      -w /app/workdir \
      -p 8080:8080 \
      -v `pwd`/.mitmproxy:/home/mitmproxy/.mitmproxy \
      -v `pwd`:/app \
      mitmproxy/mitmproxy:3.0.0 \
      mitmproxy \
      --anticache --ssl-insecure --showhost -p 8080 \
      -s /app/script/entry.py
      
