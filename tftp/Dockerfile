FROM ubuntu:16.04 

MAINTAINER tacolin tacolin@arcadyan.com 

RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections

RUN sed -i 's/archive.ubuntu.com/free.nchc.org.tw/g' /etc/apt/sources.list

RUN apt-get update

RUN apt-get install -y --no-install-recommends apt-utils dialog

RUN apt-get install -y tftpd-hpa

COPY tftpd-hpa /etc/default/tftpd-hpa

RUN mkdir -p /tftpboot

RUN chmod 777 -R /tftpboot

RUN chown nobody.nogroup -R /tftpboot

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

CMD ["/bin/bash"]

