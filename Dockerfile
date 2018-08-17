# Dockerfile

FROM alpine

RUN apk -v --update add python py-pip groff less mailcap bash

ENV VERSION 1.15.80
RUN pip install --upgrade awscli==${VERSION} && \
    apk -v --purge del py-pip && \
    rm /var/cache/apk/*

ENTRYPOINT ["bash"]
