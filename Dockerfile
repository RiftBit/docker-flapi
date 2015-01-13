# flapi docker
#
# VERSION 0.2
FROM debian:stable
MAINTAINER ErgoZ <ergozru@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get install -y --no-install-recommends git python python-pip

RUN git clone https://github.com/RiftBit/flapi.git /application && \
    pip install -r /application/requirements.txt

COPY docker-entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 5000/tcp

CMD ["none"]
