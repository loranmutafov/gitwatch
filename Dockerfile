FROM alpine
# hadolint ignore=DL3018

WORKDIR /app
COPY gitwatch.sh ./

RUN apk update && \
    apk add --no-cache bash git inotify-tools openssh && \
    chmod 755 -- *.sh

ENTRYPOINT ["./gitwatch.sh"]
