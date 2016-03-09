FROM fedora:22
MAINTAINER Christopher Smith <chris@binc.jp>

ENV BOTDIR /opt/bot

RUN dnf update -y
RUN dnf groupinstall -y "Development Tools"
RUN dnf install tar -y \
  && dnf clean all

RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh | bash
RUN cp -f ~/.nvm/nvm.sh ~/.nvm/nvm-tmp.sh; \
  echo "nvm install 5.7; nvm alias default 5.7" >> ~/.nvm/nvm-tmp.sh; \
  sh ~/.nvm/nvm-tmp.sh; \
  rm ~/.nvm/nvm-tmp.sh;

RUN git clone --depth=1 https://github.com/chris-x86-64/pion.git ${BOTDIR}
WORKDIR ${BOTDIR}
RUN /bin/bash -l -c "npm install"
