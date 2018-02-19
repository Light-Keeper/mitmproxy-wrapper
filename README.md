# mitmproxy-wrapper
## usage

`./mitm.sh`

http(s) proxy will will listen `8080` port. you can ajust it in `mitm.sh` file.
you can view/edit http(s) flows in `script/entry.py`. Refer [Mitmproxy API](http://docs.mitmproxy.org/en/stable/scripting/api.html) for details.


## Chrome 

command line for Chrome to ignore securuty errors:
`open -a Google\ Chrome --args --disable-web-security --allow-running-insecure-content --ignore-certificate-errors`
