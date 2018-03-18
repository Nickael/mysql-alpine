Docker + Alpine-3.4 + Mysql/MariaDB-10.1.18

#### parameter

* `MYSQL_ROOT_PASSWORD` : root Password   default "mysql"
* `MYSQL_USER`     : new User
* `MYSQL_PASSWORD` : new User Password
* `MYSQL_DATABASE`  : new Database for new User

#### build image

```
$ docker build -t="sephirauth/myql" .
```

#### run a default contaier

```
$ docker run --name mysql -v /mysql/data/:/var/lib/mysql -d -p 3306:3306 sephirauth/mysql-alpine
```

#### run a container with new User and Password

```
$ docker run --name mysql -v /mysql/data/:/var/lib/mysql -d -p 3306:3306 -e MYSQL_ROOT_PASSWORD=toto -e MYSQL_USER=dev -e MYSQL_PASSWORD=dev sephirauth/mysql-alpine
```

#### run a container with new Database for new User and Password

```
$ docker run --name mysql -v /mysql/data/:/var/lib/mysql -d -p 3306:3306 -e MYSQL_ROOT_PASSWORD=toto -e MYSQL_USER=dev -e MYSQL_PASSWORD=dev -e MYSQL_DATABASE=userdb sephirauth/mysql-alpine
```
####