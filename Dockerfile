FROM ubuntu:18.04
MAINTAINER Ivan Buetler <ivan.buetler@compass-security.com>

ENV DEBIAN_FRONTEND noninteractive

# Add s6-overlay
ENV S6_OVERLAY_VERSION=v3.1.0.1

RUN apt update && apt install -y dnsutils curl bash net-tools openssl pwgen vim && \ 
	apt clean && \
	apt autoremove

COPY root /
ADD https://github.com/just-containers/s6-overlay/releases/download/${S6_OVERLAY_VERSION}/s6-overlay-noarch.tar.xz /tmp
RUN tar -C / -Jxpf /tmp/s6-overlay-noarch.tar.xz
ADD https://github.com/just-containers/s6-overlay/releases/download/${S6_OVERLAY_VERSION}/s6-overlay-x86_64.tar.xz /tmp
RUN tar -C / -Jxpf /tmp/s6-overlay-x86_64.tar.xz

ENTRYPOINT ["/init"]



