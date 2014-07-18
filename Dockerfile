FROM emmanuel/java-openjdk-7-jre-headless:0.0.2
MAINTAINER Emmanuel Gomez "emmanuel@gomez.io"

ENV KAFKA_VERSION 2.9.2-0.8.1.1
ADD kafka_$KAFKA_VERSION.tgz /opt/
RUN mv /opt/kafka_$KAFKA_VERSION /opt/kafka
WORKDIR /opt/kafka

ADD server.properties /opt/kafka/config/server.properties
ADD start.sh /opt/kafka

CMD ["/opt/kafka/start.sh"]
