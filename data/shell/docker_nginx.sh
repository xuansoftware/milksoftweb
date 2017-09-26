# 编译运行nginx容器

test=false

if [ $test = true ] ; then
   root_dir=/home/andy/root/dev/workspace/go/src/github.com/xuansoftware/milksoftweb/data/nginx/
else
   root_dir=/root/workspace/milksoftweb/data/nginx/
fi


cd $root_dir

docker build -t nginx/milk .

if [ $test = true ] ; then
   docker run -it  --link milkweb:milkweb --name milkNginx -p 80:80 -p 443:443 nginx/milk
else
   docker run -d --link milkweb:milkweb --name milkNginx -p 80:80 -p 443:443 nginx/milk
fi


