FROM ubuntu:18.04
MAINTAINER Ivan Buetler <ivan.buetler@compass-security.com>

# Add s6-overlay
ENV S6_OVERLAY_VERSION=v2.2.0.3 \
    GO_DNSMASQ_VERSION=1.0.7

RUN apt update && apt install -y dnsutils curl libcap2 bash net-tools openssl pwgen && \ 
	curl -sSL https://github.com/just-containers/s6-overlay/releases/download/${S6_OVERLAY_VERSION}/s6-overlay-amd64.tar.gz | tar xfz - -C /  && \
	
COPY root /

ENTRYPOINT ["/init"]
CMD []
