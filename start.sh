#!/bin/sh
docker stop my-apache-app
docker rm my-apache-app
docker run -it --name my-apache-app -v "$PWD/httpd.conf":/usr/local/apache2/conf/httpd.conf -v "$PWD":/usr/local/apache2/htdocs/ -p 80:80 httpd:2.4
