FROM nginx
MAINTAINER andy.zx xuansoftware@126.com

# 部署nginx

# 删除默认的配置文件
RUN rm -v /etc/nginx/nginx.conf
# 复制nginx.conf过来
ADD conf/nginx.conf /etc/nginx/

ADD 213946794940857/213946794940857.key /etc/nginx/

ADD 213946794940857/213946794940857.pem /etc/nginx/

# 关闭守护进程
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
# 配置端口
EXPOSE 80
EXPOSE 443
# Set the default command to execute
# when creating a new container
CMD service nginx start

