# --- clone ---

FROM alpine:3.9.3 as clone

ENV FRP_VERSION 0.26.0
ENV FRP_ARCH amd64

RUN wget https://github.com/fatedier/frp/releases/download/v${FRP_VERSION}/frp_${FRP_VERSION}_linux_${FRP_ARCH}.tar.gz
RUN tar xzf frp_${FRP_VERSION}_linux_${FRP_ARCH}.tar.gz

# --- prod ---

FROM alpine:3.9.3 as prod

ENV FRP_VERSION 0.26.0
ENV FRP_ARCH amd64

RUN apk --no-cache add curl bash tree tzdata

COPY --from=clone frp_${FRP_VERSION}_linux_${FRP_ARCH}/frps /frps

WORKDIR /
EXPOSE 80 443 6000 7000 7500

ENTRYPOINT ["/frps"]
