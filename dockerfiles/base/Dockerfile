FROM fedora:latest
MAINTAINER Christopher Smith <chris@binc.jp>

RUN dnf update -y
RUN dnf install --disableplugin=deltarpm -y tar findutils git && dnf clean all
RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh | bash
RUN cp -f ~/.nvm/nvm.sh ~/.nvm/nvm-tmp.sh; \
  echo "nvm install 5.7; nvm alias default 5.7" >> ~/.nvm/nvm-tmp.sh; \
  bash ~/.nvm/nvm-tmp.sh; \
  rm ~/.nvm/nvm-tmp.sh;
