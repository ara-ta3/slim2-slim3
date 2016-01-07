composer.phar=./composer.phar
public=.

init:
	curl -sS https://getcomposer.org/installer | php

install:
	php $(composer.phar) install

server:
	php -S localhost:8080 -t $(public)

serv-slim2:
	$(MAKE) -C slim2 server

serv-slim3:
	$(MAKE) -C slim3 server
