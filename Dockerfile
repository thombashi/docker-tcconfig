FROM python:3.6-slim-stretch
LABEL maintainer="Tsuyoshi Hombashi <tsuyoshi.hombashi@gmail.com>"

RUN apt-get update && apt-get install -y --no-install-recommends \
    iperf \
    iproute2 \
    iptables \
    iputils-ping \
    && rm -rf /var/lib/apt/lists/* \
    && pip install tcconfig==0.20.3 netifaces

ENTRYPOINT ["/bin/bash"]
