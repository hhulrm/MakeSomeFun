#源镜像
FROM golang:latest
#作者
MAINTAINER Razil "crab"
WORKDIR $GOPATH/src/github.com/mygohttp
#将服务器的go工程代码加入到docker容器中
ADD mygohttp.go $GOPATH/src/github.com/mygohttp
ADD echo $GOPATH/src/github.com/
#go构建可执行文件
RUN go build .
#暴露端口
EXPOSE 6064
#最终运行docker的命令
ENTRYPOINT  ["./mygohttp"]
