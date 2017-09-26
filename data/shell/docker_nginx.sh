# 编译运行nginx容器

test=false

if [ $test = true ] ; then
   root_dir=/home/andy/root/dev/workspace/go/src/github.com/xuansoftware/milksoftweb/data/nginx/
else
   root_dir=/root/workspace/milksoftweb/data/nginx/
fi

logs_dir=${root_dir}logs/
echo $logs_dir

cd $root_dir

docker build -t nginx/milk .

if [ $test = true ] ; then
   docker run -it --name milkNginx --link milkweb:web_server -p 80:80 -p 443:443 -v $logs_dir:/etc/nginx/logs/ nginx/milk
else
   docker run -d --name milkNginx --link milkweb:web_server -p 80:80 -p 443:443 -v $logs_dir:/etc/nginx/logs/ nginx/milk
fi


