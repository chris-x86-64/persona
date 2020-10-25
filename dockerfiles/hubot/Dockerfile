# docker build --no-cache .

FROM chrisx86/nodejs-base

ENV BOTDIR /opt/bot

RUN git clone --depth=1 https://github.com/chris-x86-64/pion.git ${BOTDIR}
WORKDIR ${BOTDIR}
RUN /bin/bash -l -c "npm install"

ENV HUBOT_ADAPTER slack
ENV HUBOT_NAME pion
# ENV HUBOT_SLACK_TOKEN
ENV HUBOT_SLACK_TEAM base
ENV HUBOT_SLACK_BOTNAME ${HUBOT_NAME}
CMD ["/bin/bash", "-l", "-c", "bin/hubot"]
