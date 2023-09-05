## Why Kafka?

____

### Multiple Producers

Kafka is able to seamlessly handle multiple producers, whether those clients are using many topics or the same topic.
This makes the system ideal for aggregating data from many frontend systems and making it consistent. For example, a
site that serves content to users via a number of microservices can have a single topic for page views that all
services can write to using a common format. Consumer applications can then receive a single stream of page views for
all applications on the site without having to coordinate consuming from multiple topics, one for each applicaiton.

### Multiple Consumers

In addition to multiple producers, Kafka is designed for multiple consumers to read any single stream of a message
without
interfering with each other's client. This is in contrast to many queuing systems where once a message is consumed by
one
client, it is not available to any other. Multiple Kafka consumers can choose to operate as part of a group and share a
stream, assuring that the entire group processes a given message only once.

### Disk-Based Retention

Durable retention means that if a consumer falls behind, either due to slow processing or a burst in traffic, there is
no
danger of losing data. It also means that maintenance can be performed on consumers, taking applications offline for a
short period of time, with no concern about messages backing up the producer or getting lost. Consumers can be stopped,
and the messages will be retained in Kafka. This allows them to restart and pick up processing messages where they left
off with no data loss.

### Scalable

Kafka's flexible scalability makes it easy to handle any amount of data. Expansions can be performed while the cluster
is online, with no impact on the availability of the system as a whole.

### High Performance

All of these features come together to make Apache Kafka a publish/subscribe messaging system with excellent performance
under a high load.

### Platform Features

The core Apache Kafka project has also added some streaming platform features that can make it much easier for
developers to perform common types of work.

## The Data Ecosystem

___

## Brokers and Clusters

___
A single Kafka server is called a `broker`. The broker receives messages from producers, assigns offsets to them, and
writes the messages to storage on disk. It also services consumers, responding to fetch requests for partitions and
responding with the message that have been published. Depending on the specific hardware and its performance
characteristics, a single broker can easily handle thousands of partitions and millions of messages per second.

Kafka brokers are designed to operate as part of a `cluster`. Within a cluster of brokers, one broker will also function
as the cluster `controller`. The controller is responsible for administrative operations, including assigning partitions
to brokers and monitoring for broker failures. A partition is owned by a single broker in the cluster, and that broker
in the cluster, and that broker is called the `leader` of the partition. A replicated partition is assigned to
additional brokers, called `followers` of the partition. Replication provides redundancy of messages in the partition,
such that one of the followers can take over leadership if there is a broker failure. All producers must connect to the
leader in order to publish messages, but consumers may fetch from either the leader or one of the followers.

A key feature of Apache Kafka is that or `retention`, which is the durable storage of a message for some period of time.
Kafka brokers are configured with a default retention setting for topics, either retaining messages for some period of
time (e.g., 10 days) of until the partitions reach a certain size in bytes (e.g., 2 GB). Once these limits are
reached, messages are expired and deleted. In this way, the retention configuration defines a minimum amount of data
available at any time. Individual topics can also be configured with their own retention settings so that messages are
stored for only as long as they are useful.
Topics can also be configured as `log compacted`, which means that Kafka will retain only the last message produced with
a specific key. This can be useful for changelog-type data, where only the last update is interesting.

