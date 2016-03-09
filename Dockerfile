FROM fedora:22
MAINTAINER Christopher Smith <chris@binc.jp>

ENV BOTDIR /opt/bot

RUN dnf update -y
RUN dnf install \
  curl \
  git \
  make \
  automake \
  gcc \
  gcc-c++ \
  kernel-devel \
  npm \
  -y \
  && dnf clean all

RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh | bash
RUN nvm install 5.7
RUN git clone --depth=1 https://github.com/chris-x86-64/pion.git ${BOTDIR}

WORKDIR ${BOTDIR}

RUN npm install
