# docker for laravel8

php-fpm 8<br/>
nginx<br/>
mariadb<br/>
phpmyadmin<br/>

```console
docker-compose build
docker-compose up -d
```

```console
max depth exceeded error:
docker rmi -f $(docker images -a -q)
```
