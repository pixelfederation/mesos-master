################################################################################
# mesos-master: 1.2.1
# Date: 07/18/2016
# Mesos Version: 0.28.2-2.0.27.ubuntu1404
#
# Description:
# Mesos Master container. Mesos Version is tied to mesos-base container.
# Former MAINTAINER Bob Killen / killen.bob@gmail.com / @mrbobbytables
################################################################################

FROM pixelfederation/mesos-base:1.2.1

MAINTAINER Milan Baran / mbaran@pixelfederation.com / @mbaran

COPY ./skel /

RUN chmod +x init.sh  \
 && chown -R logstash-forwarder:logstash-forwarder /opt/logstash-forwarder

EXPOSE 5050

CMD ["./init.sh"]
