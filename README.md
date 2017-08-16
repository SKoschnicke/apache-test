This repo creates an apache in a docker container which serves the dev directory to dev.mydomain.local and the staging directory to stage.mydomain.local. Just add the following to your hosts-file:

```
127.0.0.1  staging.mydomain.local dev.mydomain.local
```

Then execute the ./start.sh script or the following docker command:

```
docker run -it --name my-apache-app -v "$PWD/httpd.conf":/usr/local/apache2/conf/httpd.conf -v "$PWD":/usr/local/apache2/htdocs/ -p 80:80 httpd:2.4
```

You can now open http://dev.mydomain.local and http://stage.mydomain.local in your browser. Each one should show the respective index.html in the directory (containing only "dev" or "staging" by default).
