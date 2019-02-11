#!/bin/bash

mkcert localhost

mv localhost.pem ./.docker/traefik/certs/localhost/localhost.crt
mv localhost-key.pem ./.docker/traefik/certs/localhost/localhost.key
