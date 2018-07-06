#!/usr/bin/env bash

sudo openssl genrsa -out certs/localhost/server.key 2048
sudo openssl genrsa -out certs/localhost/localhost.key 2048
sudo openssl rsa -in certs/localhost/localhost.key -out certs/localhost/localhost.key.rsa

sudo openssl req -new -key certs/localhost/server.key -subj "/C=MX/ST=QRoo/L=Cancun/O=NginxDev/CN=nginx.dev/emailAddress=admin@nginx.dev/" -out certs/localhost/server.csr
sudo openssl req -new -key certs/localhost/localhost.key.rsa -subj "/C=MX/ST=QRoot/L=Cancun/O=NginxDev/CN=nginx.dev/" -out certs/localhost/localhost.csr -config certs/localhost.conf

sudo openssl x509 -req -days 365 -in certs/localhost/server.csr -signkey certs/localhost/server.key -out certs/localhost/server.crt
sudo openssl x509 -req -extensions v3_req -days 365 -in certs/localhost/localhost.csr -signkey certs/localhost/localhost.key.rsa -out certs/localhost/localhost.crt -extfile certs/localhost.conf

sudo security add-trusted-cert -d -r trustRoot -k /Library/Keychains/System.keychain certs/localhost/localhost.crt
