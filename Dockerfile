FROM alpine:latest

RUN apk --no-cache add curl

ADD *.sh /
RUN chmod +x /*.sh
RUN echo "1 * * * * /curl.sh" >> /var/spool/cron/crontabs/root

CMD ["crond -f -l 1 -L /dev/stdout"]