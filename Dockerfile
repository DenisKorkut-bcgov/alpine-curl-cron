FROM alpine:latest

RUN apk --no-cache add curl

ADD *.sh /
RUN chmod +x /*.sh
RUN echo "* * * * * /curl.sh" >> /var/spool/cron/crontabs/root

CMD crond -f -l 1 -L /dev/stdout