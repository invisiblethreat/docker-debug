FROM alpine:latest

WORKDIR /root

RUN apk update && apk add zsh tcpdump lsof strace git

ENTRYPOINT ["/bin/zsh"]
