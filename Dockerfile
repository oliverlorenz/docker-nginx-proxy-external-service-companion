FROM alpine:3
RUN apk add gettext
ADD . /
CMD pwd && ./docker-entrypoint.sh && tail -f /dev/null
