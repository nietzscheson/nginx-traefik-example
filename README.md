Nginx + Traefik example in Docker
============


Installation
============

Step 1: Clone repository
---------------------------

```console
$ git clone git@github.com:nietzscheson/nginx-traefik-example.git
```

Step 2: Install docker dependecies
-------------------------

```console
$ docker-compose up --build -d
```

Step 3: Create SSL certs
-------------------------

```console
$ bin/ssh-local.sh
```

Step 4: Add nginx.dev in /etc/hosts
-------------------------

That's all. Try and fun!!!

-----------

License
-------

This bundle is published under the [MIT License](LICENSE)
