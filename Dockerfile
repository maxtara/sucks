FROM python:alpine3.14

RUN apk update 
RUN apk add --update gcc libc-dev  

RUN python3 -m pip install https://github.com/maxtara/sucks/archive/master.zip

RUN apk add tzdata
RUN cp /usr/share/zoneinfo/Australia/Sydney /etc/localtime

COPY cronjobs /etc/crontabs/root
COPY run.sh /

# start crond with log level 8 in foreground, output to stderr
CMD ["crond", "-f", "-d", "8"]
