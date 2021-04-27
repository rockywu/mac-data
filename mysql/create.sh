#!/bin/bash
set -x 
pwd=$(cd "$(dirname "$0")";pwd)
docker run --name mysql_local -p 13306:3306 -v $pwd/conf/my.cnf:/etc/mysql/my.cnf -v $pwd/data:/var/lib/mysql -v $pwd/log:/var/log/mysql -e MYSQL_ROOT_PASSWORD=root --restart=always -d mysql:5.7
