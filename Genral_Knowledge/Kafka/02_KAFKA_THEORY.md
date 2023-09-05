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