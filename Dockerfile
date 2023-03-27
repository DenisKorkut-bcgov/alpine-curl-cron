FROM alpine:latest

RUN apk --no-cache add curl

# ADD *.sh /
# RUN chmod +x /*.sh

# ENTRYPOINT ["/start.sh"]
# CMD [""]

# Add curl script to crontabs @ every minute
RUN echo "1 * * * * /bin/bash /curl.sh" >> /var/spool/cron/crontabs/root

CMD crond -f