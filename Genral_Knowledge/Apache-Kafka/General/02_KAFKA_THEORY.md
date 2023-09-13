### Kafka Topics, partitions, and offsets

___

* `Topics`: a particular stream of data
* Like a table in a database (without all the constraints)
* You can have as many topics as you want
* A topic is identified by its `name`
* Any kind of message format
* The sequence of messages is called a `data stream`
* You cannot query topics, instead, use Kafka Producers to send data and Kafka Consumers to read the data

#### Partitions and offsets

* Topics are split in `partitions` (example: 200 partitions)
    * Messages within each partition are ordered
    * Each message within a partition gets an incremental id, called `offset`
* Kafka topics are `immutable`: once data is written to a partition, it cannot be changed
* Illustrate `Kafka Topic`
    * Partition 0 | `0 1 2 3 4 5 6 7 8 9 10 11 12` ---> writes
    * Partition 1 | `0 1 2 3 4 5 6 7 8` ---> writes
    * Partition 2 | `0 1 2 3 4 5 6 7 8 9 10` ---> writes

#### Topic example: truck_gps

* Say you have a fleet of trucks; each reports its GPS position to Kafka.
* Each truck will send a message to Kafka every 20 seconds, each message will contain the truck ID and the truck
  position (latitude and longitude).
* You have a topic `trucks_gps` that contains the position of all trucks.
* We choose to create that topic with 10 partitions (arbitrary number)

#### Kafka Topics, partitions, and offsets — important notes

* Illustrate `Kafka Topic`
    * Partition 0 | `0 1 2 3 4 5 6 7 8 9 10 11 12` ---> writes
    * Partition 1 | `0 1 2 3 4 5 6 7 8` ---> writes
    * Partition 2 | `0 1 2 3 4 5 6 7 8 9 10` ---> writes
* Once the data is written to a partition, `it cannot be changed` (immutability).
* Data is kept only for a limited time (default is one week - configurable).
* Offset only has a meaning for a specific partition.
    * E.g., offset 3 in partition 0 doesn't represent the same data as offset 3 in partition 1
    * Offsets are not re-used even if the previous messages have been deleted
* Order is guaranteed only within a partition (not across partitions)
* Data is assigned randomly to a partition unless a key is provided
* You can have as many partitions per topic as you want

### Producers and message keys

___

* Producers write data on topics (which are made of partitions)
* Producers know to which partition to write to (and which Kafka broker has it)
* In the case of Kafka broker failures, Producers will automatically recover
* This load is balanced by many brokers thanks to the number of partitions

```md
  _________
/         \
| PRODUCER |  
\_________/
|
| SEND DATA
|
\|/
 ____________     ______________________________
| |--> | Topic-A / Partition 0 |
| | | 0 1 2 3 4 5 6 7 8 9 10 11 12 |--> writes
| | |______________________________|
| |    
| |    ______________________
| |--> | Topic-A / Partition 1|
| | | 0 1 2 3 4 5 6 7 8 |--> writes
| | |______________________|
| |
| |    _____________________________
| |--> | Topic-A / Partition 2 |
| | | 0 1 2 3 4 5 6 7 8 9 10 |--> writes
|____________| |_____________________________|

```

#### Producers: Message keys

* Producers can choose to send a `key` with the message (string, number, binary, etc...)
* if `key=null`, data is sent round-robin (partition 0, then 1, then 2...)
* if `key!=null`, then all messages for that key will always go to the same partition (hashing)

#### Kafka message anatomy

* `Key - binary` (Can be null)
* `Value - binary` (Can be null)[README.md](..%2F..%2FREADME.md)
* `Compression Type` (none, gzip, snappy, lz4, zstd)
* `Headers (Optional)`: Key-Value Pairs
* `Partition + Offset`
* `Timestamp` (system or user set)

#### Kafka Message Serializer

* Kafka only accepts bytes as an input from producers and sends bytes out as an output to consumers
* Message Serialization means transforming objects / data into bytes
* They are used on the value and the key
* Common Serializers:
    * String (incl.JSON)
    * Int, Float
    * Avro
    * Protobuf

#### Kafka Message Key Hashing

* A Kafka partitioner uses a specific logic to determine which partition a record should be sent to.
* `Key Hashing` is the process of determining the mapping of a key to a partition
* In the default Kafka partitioner, the keys are hashed using the `murmur2 algorithm`, with the formula below:
    * `tagetParition = Math.abs(Utils.murmur2(keyBytes)) % (numPartitions - 1)`

```md
Record ---.send()---> Producer Partitioner logic --Assign partition 1-> Partition 1
```

### Consumers and deserialization

___

#### Consumers

* Consumers read data from a topic (identified by name) - pull model
* Consumers automatically know which broker to read from
* In case a broker failures, consumers know how to recover
* Data is read in order from low to high offset `within each partition`

#### Consumer Deserializer

* Deserialize indicates how to transform bytes into objects / data
* They are used on the value and the key of the message
* Common Deserializers:
    * String (incl.JSON)
    * Int, Float
    * Avro
    * Protobuf
* The serialization / deserialization type must not change during a topic lifecycle (**create a new topic instead**)

### Consumer Groups and consumer offsets

___

#### Consumer Groups

* All the consumers in an application read data as a consumer groups
* Each consumer withing a group reads from exclusive partitions

#### Consumer Groups - What if too many consumers?

* If you have more consumers than partitions, some consumers will be `inactive`

#### Multiple Consumers on one topic

* In Apache Kafka, it is acceptable to have multiple consumer groups on the same topic
* To create distinct consumer groups, use the consumer property `group.id`

#### Consumer Offsets

* `Kafka` stores the offsets at which a consumer group has been reading
* The offsets committed are in Kafka `topic` names `__consumer_offsets`
* When a consumer in a group has processed data received from `Kafka`, it should be `periodically` committing the
  offsets (the Kafka broker will write to `__consumer_offests`, not the group itself)
* If a consumer dies, it will be able to read back from where it left off thanks to the committed consumer offsets!

#### Delivery semantics for consumers

* By default, Java Consumers will automatically commit offsets (at least once)
* There are 3 delivery semantics if you choose to commit manually
* Option 1: `At least once` (usually preferred)
    * Offsets are committed after the message is processed
    * If the processing goes wrong, the message will be read again
    * This can result in duplicate processing of messages. Make sure your processing is `idempotent` (i.e., processing
      again the message won't impact your systems)
* Option 2: `At most once`
    * Offsets are committed as soon as messages are received
    * If the processing goes wrong, some messages will be lost (they won't be read again)
* Option 3 `Exactly once`
    * For Kafka => Kafka workflows: use the Transactional API (easy with Kafka Streams API)
    * For Kafka => External System workflows: use an `idempotent` consumer

### Brokers and topics

____

#### Kafka Brokers

* A Kafka cluster is composed of multiple brokers (servers)
* Each broker is identified with its ID (integer), e.g., `BROKER 101`,`BROKER 102`, `BROKER 103` etc.
* Each broker contains certain topic partitions
* After connecting to any broker (called a bootstrap broker), you will be connected to the entire cluster.
* A good number to get started is 3 brokers, but some big clusters have over 100 brokers

#### Brokers and topics

* Example of Topic-A with 3 partitions and Topic-B with 2 partitions
* `Broker 101:`
    * `Topic-A Partition 0`
    * `Topic-B Partition 1`
* `Broker 102:`
    * `Topic-A Partition 2`
    * `Topic-B Partition 0`
* `Borker 103:`
    * `Topic-A Partition 1`
* Note: data is distributed, and `Broker 103` doesn't have any `Topic B` data.

#### Kafka Broker Discovery

* Every Kafka broker is also called a "bootstrap server"
* That means that `you only need to connect to once broker`, and the Kafka clients will know how to be connected to the
  entire cluster (smart clients)
* Each broker knows about all brokers, topics and partitions (metadata)

### Topic replication

___

#### Topic replication factor

* Topics should have a replication factor > 1 (usually between 2 and 3)
* This way if a broker is down, another broker can serve the data
* Example: Topic-A with 2 partitions and replication factor of 2
* Example: If we lose `Broker 102` , `Broker 101` and `Broker 103` can still serve the data
* `Broker 101`
    * `Partition 0 Topic-A`
* `Broker 102`
    * `Partition 1 Topic-A`
    * `Partition 0 Topic-A` (Replication)
* `Broker 103`
    * `Partition 1 Topic-A` (Replication)

#### Concept of Leader for Partition

* At any time, only ONE broker can be a leader for a given partition
* Producers can only send data to the broker that is leader of a partition
* The other brokers will replicate the data
* Therefore, each partition has one leader and multiple ISR (in-sync replica)
* Example:
* `Broker 101`
    * `Partition 0 Topic-A` (Leader)
* `Broker 102`
    * `Partition 1 Topic-A` (Leader)
    * `Partition 0 Topic-A` (Replication) (ISR)
* `Broker 103`
    * `Partition 1 Topic-A` (Replication) (ISR)

#### Default producer & consumer behavior with leaders

* Kafka Producers can only write to the leader broker for a partition
* Kafka Consumers by default will read from the leader broker for a partition

#### Kafka Consumers Replica Fetching (Kafka v2.4+)

* Since Kafka 2.4, it is possible to configure consumers to read from the closest replica
* This may help improve latency, and also decrease network costs if using the cloud

#### Producer Acknowledgements (acks)

* Producers can choose to receive acknowledgement of data writes:
    * `acks=0`: Producer won't wait for acknowledgment (possible data loss)
    * `acks=1`: Producer will wait for leader acknowledgment (limited data loss)
    * `acks=all`: Leader + replicas acknowledgment (no data loss)

#### Kafka Topic Durability

* For a topic replication factor of 3, topic data durability can withstand 2 brokers loss.
* As a rule, for a replication factor of `N`, you can permanently lose up to `N-1` brokers and still recover your data.

### ZooKeeper

____

* ZooKeeper manages brokers (keeps a list of them)
* ZooKeeper helps in performing leader election for partitions
* ZooKeeper sends notifications to Kafka in case of changes (e.g., new topic, broker dies, broker comes up, delete
  topics, etc...)
* `Kafka 2.x can't work without ZooKeeper`
* `Kafka 3.x can work without ZooKeeper (KIP-500) - using Kafka Raft instead`
* `Kafka 4.x will not have ZooKeeper`
* ZooKeeper by design operates with an odd number of servers (1,3,6,7)
* ZooKeeper has a leader (writes) the rest of the servers are followers (reads)
* (ZooKeeper does NOT store consumer offsets with Kafka > v0.10)

### Kafka KRaft: Removing ZooKeeper

___

#### About Kafka KRaft

* In 2020, the Apache Kafka project started to work `to remove the Zookeeper dependency` from it (KIP-500)
* Zookeeper shows scaling issues when Kafka clusters have > 100,000 partitions
* By removing Zookeeper, Apache Kafka can:
    * Scale to millions of partitions, and becomes easier to maintain and set-up
    * Improve stability, makes it easier to monitor, support and administer
    * Single security model for the whole system
    * Single process to start with Kafka
    * Faster controller shutdown and recovery time
* Kafka 3.X now implements the Raft protocol (KRaft) in order to replace Zookeeper
    * Production ready since Kafka 3.3.1 (KIP-833)
    * Kafka 4.0 will be released only with KRaft (no Zookeeper)

### Consumer offsets commit strategies

___

* There are two most common patterns for committing offsets in consumer applications.
* `2 startegies`:
    * (easy) `enable.auto.commit=true` and synchronous processing of batches
    * (medium) `enable.auto.commit=false` and manual commit of offsets

#### Kafka Consumer - Auto Offset Commit Behavior

* In the Java Consumer API, offsets are regularly committed
* Enable an at-least once reading scenario by default (under conditions)
* Offsets are committed when you call `.poll()` and `auto.commit.interval.ms` has elapsed
* Example: `auto.commit.interval.ms=5000` and `enable.auto.commit=true` will commit
* `Make sure message are all successfully processed before you call poll() again`
    * If you don't, you will not be in at-least-once reading scenario
    * In that (rare) case, you must disable `enable.auto.commit`, and most likely most processing to a separate thread,
      and then from time-to-time call `.commitSync()` or `.commitAsync()` with the correct offsets manually.

1. `enable.auto.commit=true` and synchronous processing of batches

```java
while(true){
  List<Records> batch = consumer.poll(Duration.ofMillis(100))
  doSomethingSynchronous(batch)
}
```

* With `auto-commit`, offsets will be committed automatically for you at a regular
  interval `auto.commit.inteval.ms=5000` by default.
  every-time you call `.poll()`

2. `enable.auto.commit=false` and synchronous processing of batches

```java
while(true){
  batch += consumer.poll(Duration.ofMillis(100))
  if isReady(batch){
    doSomethingSynchronous(batch)
    consumer.commitAsync();
  }
}
```

* You control when you commit offsets and what's the condition for committing them.
* Example: accumulating records into a buffer and then flushing the buffer to a database + committing offsets
  asynchronously then.

### Consumer Offset Reset Behavior

___

* The behavior for the consumer is to then use:
    * `auto.offset.reset=latest`: will read from the end of the log
    * `auto.offset.reset=eatliest`: will read from the start of the log
    * `auto.offset.reset=none`: will throw exception if no offset is found
* Additionally, consumer offsets can be lost:
    * If a consumer hasn't read new data in 1 day (Kafka < 2.0)
    * If a consumer hasn't read new data in 7 days (Kafka >= 2.0)
* This can be controlled by the broker setting `offset.retention.minutes`

#### Replaying data for Consumers

* To replay data for a consumer group:
    * Take all the consumers from a specific group down
    * User `kafka-consumer-groups` command to set offset to what you want
    * Restart consumers
* `Bottom line`:
    * Set proper data retention period & offset retention period
    * Ensure the auto offset reset behavior is the one you expect / want
    * Use replay capability in case of unexpected behavior

### Consumer internal threads

___

#### Controlling Consumer Liveliness

* Consumers in a Group talk to a Consumer Groups Coordinator
* To detect consumers that are "down", there is a "heartbeat" mechanism and a "poll" mechanism
* To avoid issues, consumers are encouraged to process data fast and often poll

#### Consumer Heartbeat Thread

* `heartbeat.interval.ms` (default 3 seconds):
    * How often to send heartbeats
    * Usually set to 1/3d of `session.timeout.ms`
* `session.timeout.ms` (default 45 seconds Kafka 3.0+, before versions 10 seconds);
    * Heartbeats are sent periodically to the broker
    * If no heartbeat is sent during that period, the consumer is considered dead
    * Set even lower to faster consumer rebalances
* `Take-away`: This mechanism is used to detect a consumer application being down

#### Consumer Poll Thread

* `max.poll.interval.ms` (default 5 minutes):
    * Maximum amount of time between two `.poll()` calls before declaring the consumer dead
    * This is relevant for Big Data frameworks like Spark in case the processing takes time
* `Take-away`: This mechanism is used to detect a data processing issue with the consumer (consumer is "stuck")
* `max.poll.records` (default 500):
    * Controls how many records to receive per poll request
    * Increase if your messages are very small and have a lot of available RAM
    * Good to monitor how many records are polled per request
    * Lower if it takes you too much time to process records

#### Consumer Poll Behavior

* `fetch.min.bytes` (default 1):
    * Control how much data you want to pull at least on each request
    * Helps to improve throughput and decreasing request number
* `fetch.max.wait.ms` (default 500):
    * The maximum amount of time the Kafka broker will block before answering the fetch request if there isn't
      sufficient data to immediately satisfy the requirement given by `fetch.min.bytes`
    * This means that until the requirement of `fetch.min.bytes` to be satisfied, you will have up to 500ms of latency
      before the fetch returns data to the consumer (e.g., introducing a potential delay to be more efficient in
      requests)
* `max.partition.fetch.bytes` (default 1MB):
    * The maximum amount of data per partition the server will return
    * If you read from 100 partitions, you will need a lot of memory (RAM) ~ at least 100MB of RAM

* `fetch.max.bytes` (default 55MB):
    * Maximum data returned for each fetch request
    * If you have available memory, try increasing `fetch.max.bytes` to allow the consumer to read more data in each
      request.

### Consumer replica fetching: Rack awareness

___

#### Default Consumer behavior with partition leaders

* Kafka Consumers by default will read from the leader broker for a partition
* Possibly higher latency (multiple data center), +high network charges ($$$)
* Example: Data Centre === Availability Zone (AZ) in AWS, you pay for cross-AZ network charges

#### Kafka Consumers Replica Fetching (Kafka v2.4+)

* Since Kafka 2.4, it is possible to configure consumers to read from `the closest replica`
* This may help improve latency, and also decrease network costs if using the cloud

#### Consumer Rack Awareness (v2.4+) - How to setup

* `Broker setting`:
    * Must be version Kafka v2.4+
    * `rack.id` config must be set to the data center ID (ex: AZ ID in AWS)
    * Example for AWS: AZ ID `rack.id=usw2-az1`
    * `replica.selector.class` must be set to `org.apache.kafka.common.replica.RackAwareReplicaSelector`
* `Consumer client settings`:
    * Set `client.rack` to the data center ID the consumer is launched on