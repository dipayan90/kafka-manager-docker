Kafka Manager Docker
=============

A tool for managing [Apache Kafka](http://kafka.apache.org). Containerized version of kafka manager ( https://github.com/yahoo/kafka-manager )

It supports the following :

 - Manage multiple clusters
 - Easy inspection of cluster state (topics, consumers, offsets, brokers, replica distribution, partition distribution)
 - Run preferred replica election
 - Generate partition assignments with option to select brokers to use
 - Run reassignment of partition (based on generated assignments)
 - Create a topic with optional topic configs (0.8.1.1 has different configs than 0.8.2+)
 - Delete topic (only supported on 0.8.2+ and remember set delete.topic.enable=true in broker config)
 - Topic list now indicates topics marked for deletion (only supported on 0.8.2+)
 - Batch generate partition assignments for multiple topics with option to select brokers to use
 - Batch run reassignment of partition for multiple topics
 - Add partitions to existing topic
 - Update config for existing topic
 - Optionally enable JMX polling for broker level and topic level metrics.
 - Optionally filter out consumers that do not have ids/ owners/ & offsets/ directories in zookeeper.

Added Features:

- Initializes at port 8080 instead of 9000
- Has a health endpoint for health checks:  produces json {status: UP}

Requirements
------------

1. [Kafka 0.8.1.1 or 0.8.2.* or 0.9.0.*](http://kafka.apache.org/downloads.html)
2. Java 8+

Build Image
-------------

docker build -t kafka-manager .


Run Image
------------

docker run -it -p 8080: 8080 -e "ZK_HOSTS=localhost:2181" kafka-manager

Add custom endpoints
------------

1. Update conf/routes with the package in which you have your route
2. Add the route definition to the package mentioned.