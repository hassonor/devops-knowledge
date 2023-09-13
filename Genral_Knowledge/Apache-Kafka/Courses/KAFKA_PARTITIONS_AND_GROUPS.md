### Partitions in Kafka

* Each topic can have 1-n partitions
* Partitions allow Kafka to scale
* Partitions have separate log files
* Each partition has a leader broker
* Enable consumers to share workloads through consumer groups
* Partitions can be replicated

### Things to Note about Partitions

* Each message goes to only one partition
* Message ordering guaranteed within a partition only
* Same message key = Same partition
* Partition count cannot be decreased

### Consumer Groups

* A group of consumers who share a topic workload
* Each message goes to only one consumer in a group
* Consumers split workload through partitions
    * Number of partitions >= Number of consumers
* Multiple consumers group—each group gets all messages
* Brokers track and rebalance consumers in a group

### Offsets in Kafka

* Number to track message consumption by consumer and partition
* Broker keeps track of what is sent and acknowledged
* Current offset: last message sent to a given consumer
* Committed offset: last message acknowledged by consumer
* Broker resends uncommitted messages in case of failure of timeout
* Ensures at least one delivery
* New consumer: request from start, new, or from offset