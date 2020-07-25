FROM python:3.8-slim-buster
LABEL maintainer="Tsuyoshi Hombashi <tsuyoshi.hombashi@gmail.com>"

RUN apt-get update && apt-get install -y --no-install-recommends \
    iperf \
    iproute2 \
    iptables \
    iputils-ping \
    && rm -rf /var/lib/apt/lists/* \
    && pip install tcconfig==0.26.0

ENTRYPOINT ["tcset", "eth0"]
CMD ["-h"]
