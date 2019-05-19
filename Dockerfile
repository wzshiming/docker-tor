FROM alpine

RUN apk add -U --no-cache tor
RUN echo "Log notice stdout" >> /etc/tor/torrc \
    && echo "SocksPort 0.0.0.0:9050" >> /etc/tor/torrc 

EXPOSE 9050
ENTRYPOINT [ "tor" ]
