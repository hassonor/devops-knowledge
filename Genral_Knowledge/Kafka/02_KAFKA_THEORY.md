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


