### Kafka Messages

___

* Event
* Unit of data
    * Row, record, map, blob
* Byte array
    * Structure imposed by published and understood by consumer
* Size limits exist in Kafka (`max.message.bytes`)
* Can be batched for efficiency

#### Messages Content

* Key
    * Need not be unique
    * Used for partitioning
* Value
    * Content of the message
    * User defined
* Time stamp
    * Automatically time-stamped
    * Event time vs. ingestion time

Messages Example:

* Message 1:

```text
Key=1001
Value={
    "id" : 1001,
    "name" : "OrHasson" 
}
```

* Message 2:

```text
Value="2024-01-01","182.184.192.1","200 OK" 
```

* Message 3:

```text
Key="Customer102"
Value=100110100101010010101010000111101010001010110101001000 
```

### Kafka Topics

___

* Holder of messages (similar in context)
    * Files with papers
    * A database table with records
* Queue for similar messages
    * Sales transactions, audit logs, video files
* Multiple topics per Kafka instance (based on a use case)
* Support multiple producers and consumers
* Each topic has multiple partitions

### Kafka Brokers

___

* A running Kafka instance
* Listen on a specific port
* Receive messages and stores
* Subscription management
* Manage topics, partitions, and logs
* Clustering capabilities
* Replication within cluster

### Kafka Logs

___

* Physical files for storing data
* Managed by Kafka brokers
* Multiple files (by broker, topic and partition)
* Rolling files
* Pruned periodically (based on configuration)
* Physical space management
* `$KAFKA_ROOT/config/server.properties` : log.dirs

### Producers and Consumers

___

#### Producers

* Any client that publishes data to Kafka
* Client libraries for programming languages
* Multiple concurrent producers per topic
* Message key identification
* Message serialization to bytes
* Synchronous and asynchronous publishing options

#### Consumers

* Consume message from Kafka
* Consume any time (streaming/batch case)
* Client libraries by programming language
* Multiple concurrent consumers per topic
* Workload scaling with consumer groups
* Deserialize bytes to data structures
* Offset management