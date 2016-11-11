# snippets

Some useful bits - could be

## startWebServerHere

Start web server in current directory by means of python 2 SimpleHTTPServer.

HTTP Headers are set to avoid file caching in browser:

```
Cache-Control: no-cache, no-store, must-revalidate
Pragma: no-cache
Expires: 0
```

Reference:
- [Brad Parks' servit.py](http://stackoverflow.com/questions/12193803/invoke-python-simplehttpserver-from-command-line-with-no-cache-option/25708957#25708957)
- [Python 2 Internet Protocols and Support](https://docs.python.org/2/library/internet.html)
- [Caching Tutorial](https://www.mnot.net/cache_docs/)

