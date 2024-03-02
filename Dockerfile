FROM alpine:3.18

RUN apk add --no-cache tor
#RUN apk add --no-cache socat
RUN apk add --no-cache openssh

COPY torrc /etc/tor/torrc

RUN adduser -D user

COPY entrypoint.sh /entrypoint.sh

USER user

ENTRYPOINT [ "/entrypoint.sh" ]
