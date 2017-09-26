# 编译运行mysql容器

test=false

if [ $test = true ] ; then
    mysql_dir=/root/data/mysql
else
    mysql_dir=/root/andy/root/dev/data/mysql
fi

docker run -d --name localMysql -v $mysql_dir:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=123456 -p 3306:3306 mysql


docker run --name phpMyAdmin --link localMysql:db -p 9998:80 -d phpmyadmin/phpmyadmin