# flapi docker
#
# VERSION               0.1
# Run with: docker run -d -p 8080:8080 riftbit/docker-flapi

FROM debian:latest
MAINTAINER ErgoZ <ergozru@gmail.com>

# required packages
RUN apt-get -y update && \
    apt-get -y upgrade && \
    apt-get -y install git python python-pip

RUN git clone https://github.com/RiftBit/flapi.git && \
    pip install -r /flapi/requirements.txt

EXPOSE 8080:8080/tcp

CMD /flapi/runp.py
