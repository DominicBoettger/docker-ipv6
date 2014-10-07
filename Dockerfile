FROM    debian:stable
ENV     DEBIAN_FRONTEND noninteractive
MAINTAINER boris

RUN apt-get -y update && apt-get -y upgrade
RUN apt-get install -y libcap2-bin netcat6

COPY run_inside.sh /
COPY run_nocaps.sh /
RUN chmod +x /run_inside.sh /run_nocaps.sh
CMD ["/run_inside.sh"]
