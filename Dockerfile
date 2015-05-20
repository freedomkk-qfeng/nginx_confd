FROM nginx:latest
MAINTAINER freedomkk<freedomkk_qfeng@qq.com>

ADD https://github.com/kelseyhightower/confd/releases/download/v0.9.0/confd-0.9.0-linux-amd64 /tmp/confd
RUN mv /tmp/confd /usr/bin && \
    chmod a+rx /usr/bin/confd && \
    chown root:root /usr/bin/confd

COPY confd/ /confd/

CMD ["/confd/run.sh"]

