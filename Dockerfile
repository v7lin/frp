FROM alpine:3.8

COPY frp /

RUN ls /

WORKDIR /
EXPOSE 80 443 6000 7000 7500

ENTRYPOINT ["/frps"]