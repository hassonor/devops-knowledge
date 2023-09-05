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