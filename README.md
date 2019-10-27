# Static file data Server

This is simple static file data server based on nginx alpine.

## Differecnes comparing to `nginx:alpine`

Some changes to increase file sharing speed
```
autoindex on;
sendfile           on;
sendfile_max_chunk 1m;
tcp_nopush on;
tcp_nodelay       on;
keepalive_timeout 65;
```

## How to use it?

Just run: 

```
    docker run -d -p 8080:8080 -v /dir/to/share:/data wojtekw92/static-file-server
```