FROM nginx
MAINTAINER andy.zx xuansoftware@126.com

# 部署nginx

# 删除默认的配置文件
RUN rm -v /etc/nginx/nginx.conf

#ADD logs/error.log /etc/nginx/logs/error.log

# 复制nginx.conf过来
ADD conf/nginx.conf /etc/nginx/

#　添加微信认证需要的文件到根目录，用于访问验证
ADD www/MP_verify_lGad6R2Dt7WCJogP.txt /home/www/

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

