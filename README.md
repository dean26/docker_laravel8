# docker for laravel8

php-fpm 8<br/>
nginx<br/>
mariadb<br/>
phpmyadmin<br/>

```console
docker-compose build
docker-compose up -d
```

max depth exceeded error:<br/>
```console
docker rmi -f $(docker images -a -q)
docker image prune -a
```
