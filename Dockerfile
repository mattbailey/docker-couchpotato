FROM debian:wheezy
MAINTAINER Joe Hughes

RUN apt-get -q update && apt-get install -qy --force-yes  python git-core
RUN git clone https://github.com/RuudBurger/CouchPotatoServer.git /CouchPotatoServer


VOLUME /config
VOLUME /data

ADD ./start.sh /start.sh
RUN chmod u+x  /start.sh

EXPOSE 5050

RUN apt-get clean &&\
  rm -rf /var/lib/apt/lists/* &&\
  rm -rf /tmp/*

CMD ["/start.sh"]
