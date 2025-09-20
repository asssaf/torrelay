FROM alpine:3.22

RUN apk add --no-cache tor

COPY torrc /etc/tor/torrc

COPY entrypoint.sh /entrypoint.sh

VOLUME /var/lib/tor

USER tor

ENTRYPOINT [ "/entrypoint.sh" ]
