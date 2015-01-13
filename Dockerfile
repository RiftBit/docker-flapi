# flapi docker
#
# VERSION 0.2
FROM debian:stable
MAINTAINER ErgoZ <ergozru@gmail.com>
RUN apt-get -y update && \
    apt-get -y install git python python-pip
RUN git clone https://github.com/RiftBit/flapi.git && \
    pip install -r /flapi/requirements.txt
VOLUME ["/flapi"]
EXPOSE 5000/tcp
CMD /flapi/runp.py
