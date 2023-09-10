### Kafka Connect Introduction

___

#### Why Kafka Connect

* Programmers always want to import data from the same sources:
    * Databases, JDBC, Couchbase, GoldenGate, SAP HANA, Blockchain, Cassandra, DynamoDB, FTP, IOT, MongoDB, MQTT,
      RethinkDB, Salesforce, Solr, SQS, Twitter...
* Programmers always want to store data in the same sinks:
    * S3, ElasticSearch, HDFS, JDBC, SAP HANA, DocumentDB, Cassandra, DynamoDB, HBase, MongoDB, Redis, Solr, Splunk,
      Twitter...

#### Kafka Connect - High level

* `Source Connectors` to get data from Common Data Sources
* `Sink Connectors` to publish that data in Common Data Sources
* Make it easy for non-experienced devs to quickly get their data reliably into Kafka
* Part of your ETL pipeline
* Scaling made easy from small pipelines to company-wide pipelines
* Other programmers may already have done an exceptional job: re-usable code
* Connectors achieve fault tolerance, idempotence, distribution, ordering

### Kafka Streams an introduction

___

* You want to do the following from the `wkimedira.recentchange` topic:
    * Count the number of times a change was created by a bot versus a human
    * Analyze number of changes per website (`ru.wikipedia.org` vs `en.wikipedia.org`)
    * Number of edits per 10-seconds as a time series
* With the Kafka Producer and Consumer, you can achieve that, but it's a very low level and not developer friendly

#### What is Kafka Streams?

* Easy `data processing and transformation library` within Kafka
* For example: `Data Transformations`, `Data Enrichment`, `Fraud Detection`, `Monitoring and Alerting`
* Standard Java Application
* No Need to create a separate cluster
* Highly scalable, elastic and fault-tolerant
* Exactly-Once Capabilities
* Once record at a time processing (no batching)
* Works for any application size

### Kafka Schema Registry introduction

___

#### The need for a schema registry

* Kafka takes bytes as an input and publishes them
* No data verification
* What if the producer sends bad data?
* What if a field gets renamed?
* What if the data format changes from one day to another?
* `The consumers break!!!`
* We need data to be self describable
* We need to be able to evolve data without braking downstream consumers.
* `We need schemas... and schema registry`
* What if the Kafka Brokers were verifying the messages they receive?
* It would break what makes Kafka so good:
    * Kafka doesn't parse or even read your data (no CPU usage)
    * Kafka takes bytes as an input, without even loading them into memory (that's called zero copy)
    * Kafka distributes bytes
    * As far as Kafka is concerned, it doesn't even know if your data is an integer, a string, etc.
* The Schema Registry must be a separate components
* Producers and Consumers need to be able to talk to it
* The Schema Registry must be able to reject bad data
* A common data format must be agreed upon
    * It needs to support schemas
    * It needs to support evolution
    * It needs to be lightweight
* Enter... the `Schema Registry`
* And `Apache Avro` as the data format (Protobuf, JSON Schema also supported)

#### Schema Registry - Purpose

* Store and retrieve schemas for Producers / Consumers
* Enforce Backward / Forward / Full compatibility of topics
* Decrease the size of the payload of data sent to Kafka

#### Schema Registry: gotchas

* Utilizing a schema registry has a lot of benefits
* BUT it implies you need to:
    * Set it up well
    * Make sure it's highly available
    * Partially change the producer and consumer code
* `Apache Avro` as a format is awesome but has a learning curve
* Other formats include `Protobuf` and `JSON Schema`
* The Confluent Schema Registry is free and source-available
* Other open-source alternatives may exist

