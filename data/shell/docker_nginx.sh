# 编译运行nginx容器

test=true
root_dir=/root/milksoftweb/data/nginx/


cd $root_dir

docker build -t nginx/milk .

if [ "$test" = "true" ] ; then
   docker run -it -p 80:80 -p 443:443 nginx/milk
else
   docker run -d -p 80:80 -p 443:443 nginx/milk
fi


