FROM ubuntu
MAINTAINER Dominic Böttger

RUN apt-get update
RUN apt-get install ping

ADD run.sh /
RUN chmod +x /run.sh
CMD ["/run.sh"]