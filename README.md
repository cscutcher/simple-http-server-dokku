simple-http-server-dokku
========================
Simple image designed for dokku deployment to host static files.

Use
---

To host the local directory on port 80;

```
docker run --rm -v $(pwd):/var/www/localhost/htdocs -p 80 cscutcher/simple-http-server-dokku
```
