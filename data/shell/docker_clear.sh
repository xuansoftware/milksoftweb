# 清理docker容器及镜像，将已关闭的都清理

docker rm $(docker ps -a -q)
docker rmi $(docker images -q -f dangling=true)