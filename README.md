Nginx + Traefik example in Docker (Self-Signed SSL)
============

> Warning! Not use this configuration in production environment.

Installation
============

Step 1: Install and configure [mkcert](https://github.com/FiloSottile/mkcert)
---------------------------

Step 2: Clone repository
---------------------------

```console
$ git clone git@github.com:nietzscheson/nginx-traefik-example.git
```

Step 3: Install docker dependecies
-------------------------

```console
$ docker-compose up --build -d
```

Step 4: Create SSL certs
-------------------------

```console
$ bin/mkcert.sh
```

-------------------------

That's all. Try and fun!!!

-----------

License
-------

This bundle is published under the [MIT License](LICENSE)
