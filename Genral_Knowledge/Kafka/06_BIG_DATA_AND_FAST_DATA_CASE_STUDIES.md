### Choosing partition count and replication factor

___

* The `two most important` parameters when create a topic
* The impact performance and durability of the system overall
* It is best to get the parameters right the first time!
    * If the partitions count increases during a topic lifecycle, you will break your keys ordering guarantees
    * If the replication factor increases during a topic lifecycle, you put more pressure on your cluster, which can
      lead to unexpected performance decrease

#### Choosing the partitions count

* Each partition can handle a throughput of a few MB/s (measure it for your setup)
* More partitions implies:
    * Better parallelism, better throughput
    * Ability to run more consumers in a group to scale (max as many consumers per group as partitions)
    * Ability to leverage more brokers if you have a large cluster
    * BUT more elections to perform for Zookeeper (if using Zookeeper)
    * BUT more files opened on Kafka
* `Guidelines`:
    * `Partitions per topic = MILLION-DOLLAR QUESTION`
        * (Intuition) Small cluster (<6 brokers): 3 x # brokers
        * (Intuition) Big cluster (<12 brokers): 2 x # brokers
        * Adjust for the number of consumers you need to run in parallel at peak throughput
        * Adjust for producer throughput (increase if super-high throughput or projected increase in the next 2 years)
    * `TEST!` Every Kafka cluster will have different performance.
    * Don't systematically create topics with 1000 partitions!

#### Choosing the Replication Factor

* It Should be at least 2, usually 3, maximum 4
* The higher the replication factor (N):
    * Better durability of your system (N-1 brokers can fail)
    * Better availability of your system (N-min.insync.replicas if producer acks=all)
    * BUT more replication (higher latency if acks=all)
    * BUT more disk space on your system (50% more if RF is 3 instead of 2)
* `Guidelines`:
    * `Set it to 3 to get started` (you must have at least 3 brokers for that)
    * If replication performance is an issue, get a better broker instead of less RF
    * `NEVER set it to 1 in production`

#### Custer guidelines

* Total number of partitions in the cluster:
    * Kafka with Zookeeper: `max 200,000 partitions` - Zookeeper Scaling limit
        * Still recommended a maximum of 4,000 partitions per broker (soft limit)
    * Kafka with KRaft: potentially millions of partitions
* If you need more partitions in your cluster, add brokers instead
* If you need more than 200,000 partitions in your cluster (it will take time to get there!), follow the Netflix model
  and create more Kafka clusters.
* Overall, you don't need a topic with 1000 partitions to achieve high throughput. `Start at a reasonable number` and
  test the performance.