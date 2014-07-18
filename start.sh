#!/bin/bash

KAFKA_BROKER_ID=$RANDOM
echo "Starting Kafka broker with ID $KAFKA_BROKER_ID"
echo "broker.id=$KAFKA_BROKER_ID" >> /opt/kafka/config/server.properties
/opt/kafka/bin/kafka-server-start.sh /opt/kafka/config/server.properties
