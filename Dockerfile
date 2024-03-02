FROM alpine:3.18

RUN apk add --no-cache tor

COPY torrc /etc/tor/torrc

COPY entrypoint.sh /entrypoint.sh

VOLUME /var/lib/tor

USER tor

ENTRYPOINT [ "/entrypoint.sh" ]
