FROM golang
MAINTAINER andy.zx andy.zx@126.com

RUN go get github.com/astaxie/beego

RUN go get github.com/xuansoftware/milksoftweb

WORKDIR /go/src/github.com/xuansoftware/milksoftweb

RUN go build

EXPOSE 8080

CMD ["./milksoftweb"]
