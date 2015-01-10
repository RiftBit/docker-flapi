# 3proxy docker
#
# VERSION               0.1
# Run with: docker run --name flapi -d -p 5000:5000 riftbit/docker-flask
FROM debian:stable
MAINTAINER ErgoZ <ergozru@gmail.com>
RUN apt-get -y update && \
    apt-get -y upgrade && \
    apt-get -y install git python python-pip apt-utils
RUN git clone https://github.com/RiftBit/flapi.git && \
    pip install -r /flapi/requirements.txt
EXPOSE 5000/tcp
CMD /flapi/runp.py