FROM ubuntu:16.04 

MAINTAINER tacolin tacolin@arcadyan.com 

RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections

RUN sed -i 's/archive.ubuntu.com/free.nchc.org.tw/g' /etc/apt/sources.list

RUN apt-get update

RUN apt-get install -y --no-install-recommends apt-utils dialog

RUN apt-get install -y vim cmake python build-essential device-tree-compiler u-boot-tools git subversion wget curl bash-completion ssh net-tools libssl-dev zlib1g.dev ocaml sharutils

RUN echo "root:root" | chpasswd

RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

CMD ["bin/bash"]

