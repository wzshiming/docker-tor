FROM alpine

RUN apk add -U --no-cache tor
COPY torrc /etc/tor/torrc

EXPOSE 9050
ENTRYPOINT [ "tor" ]
