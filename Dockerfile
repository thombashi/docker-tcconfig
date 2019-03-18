FROM python:3.7-slim-stretch
LABEL maintainer="Tsuyoshi Hombashi <tsuyoshi.hombashi@gmail.com>"

RUN apt-get update && apt-get install -y --no-install-recommends \
    iperf \
    iproute2 \
    iptables \
    iputils-ping \
    && rm -rf /var/lib/apt/lists/* \
    && pip install tcconfig==0.22.1

ENTRYPOINT ["/bin/bash"]
