# 编译运行nginx容器

test=false

if [ $test = true ] ; then
   root_dir=/home/andy/root/dev/workspace/go/src/github.com/xuansoftware/milksoftweb/
else
   root_dir=/root/workspace/milksoftweb/
fi

cd $root_dir

docker build -t golang/milk .

if [ $test = true ] ; then
   docker run -it --name milkweb --link localMysql:loacldb golang/milk
else
   docker run -d --name milkweb --link localMysql:loacldb golang/milk
fi

