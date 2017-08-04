# 编译运行nginx容器

test=true
milk_dir=/root/milksoftweb/

cd $milk_dir

docker build -t nginx/milk .

if [ "$test" = "true" ] ; then
   docker run -it -p 9001:8080 golang/milk
else
   docker run -d -p 9001:8080 golang/milk
fi


