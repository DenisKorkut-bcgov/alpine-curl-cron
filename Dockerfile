FROM alpine:latest

RUN apk --no-cache add curl

ADD *.sh /
RUN chmod +x /*.sh
RUN touch /var/spool/cron/crontabs/curl
RUN echo "* * * * * /bin/sh ./curl.sh" >> /var/spool/cron/crontabs/curl
RUN chmod a+r /var/spool/cron/crontabs/root
RUN chmod a+r /var/spool/cron/crontabs/curl

CMD crond -f -l 1