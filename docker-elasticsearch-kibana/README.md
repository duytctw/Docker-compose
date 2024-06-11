# Kafka With ElasticStack Integration
Kafka is a stream processing platform which process messages in queue between producer and consumer via kafka broker, logstash will create a pipeline to ingest data or message from kafka to elasticsearch then kibana will visualize the data from elasticsearch index.

    Data will communicate in the direction of kafka-->logstash-->Elasticsearch-->kibana

## ✨ Kafka Commands

List kafka topics from the container
```
podman exec -it kafka-cntr bash /bin/kafka-topics --list --bootstrap-server localhost:9092
```

Consume messages from the topic name 'logs-topic'
```
podman exec -it kafka-cntr bash /bin/kafka-console-consumer --topic logs-topic --from-beginning --bootstrap-server localhost:9092
```

Produce messages via topic name 'logs-topic'
```
podman exec -it kafka-cntr bash /bin/kafka-console-producer --topic logs-topic --bootstrap-server localhost:9092
```

Create topic if needed, logstash config handle the topic creation hence manual creation not required
```
podman exec -it kafka-cntr bash /bin/kafka-topics --create --topic logs-topic --bootstrap-server localhost:9092
```
