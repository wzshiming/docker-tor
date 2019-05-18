FROM alpine

RUN apk add -U --no-cache tor
RUN echo "Log notice stdout" >> /etc/torrc \
    && echo "SocksPort 0.0.0.0:9050" >> /etc/torrc 

EXPOSE 9050
ENTRYPOINT tor
