FROM alpine
ENV STERN_VERSION=1.11.0
RUN apk add curl bash
RUN curl -L -o /usr/local/bin/stern https://github.com/wercker/stern/releases/download/${STERN_VERSION}/stern_linux_amd64 \
 && chmod +x /usr/local/bin/stern
