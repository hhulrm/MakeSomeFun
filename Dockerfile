#源镜像
FROM golang:latest
#作者
MAINTAINER Razil "crab"
WORKDIR $GOPATH/src
#将服务器的go工程代码加入到docker容器中
ADD . $GOPATH/src
WORKDIR $GOPATH/src/myhttp
#go构建可执行文件
RUN go build .
#暴露端口
EXPOSE 8080
#最终运行docker的命令
ENTRYPOINT  ["./myhttp"]
