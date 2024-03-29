### Producer Acknowledgements (acks)

___

* Producers can choose to receive acknowledgement of data writes:
    * `acks=0`: Producer won't wait for acknowledgment (possible data loss)
        * When `acks=0`, producers consider messages as "written successfully" the moment the message was sent without
          waiting for the broker to accept it at all
        * If the broker goes offline or an exception, happens, we won't know and `will lost data`
        * Useful for data where it's okay to potentially lose messages, such as a metrics collection
        * Produces the `highest throughput` setting because the network overhead is minimized
    * `acks=1`: Producer will wait for leader acknowledgments (limited data loss)
        * When `acks=1`, producers consider a message as "written successfully"
          when the message was acknowledged by only the leader
        * Default for Kafka v1.0 to v2.8
        * Leader response is requested, but replication is not a guarantee as it happens in the background
        * If the leader broker goes offline unexpectedly but replicas haven't replicated the data yet, we have a data
          loss
        * If an ack is not received, the producer may `retry the request`
    * `acks=all (acks=-1)`: Leader + replicas acknowledgment (no data loss)
        * When `acks=all`, producers consider messages as "written successfully" when the message is accepted by all
          in-sync replicas (ISR).
        * Default for Kafka 3.0+

#### Producer `acks=all & min insync.replicas`

* The leader replica for a partition checks to see if there are enough in-sync replicas for safely writing the message
  (controlled by the broker setting `min.insync.replicas`)
    * `min.insync.replicas=1`: only the broker leader needs to successfully ack
    * `min.insync.replicas=2`: at least the broker leader and one replica need to ack

#### Kafka Topic Availability

* `Availability: (considering RF=3)`:
    * `acks=0 & acks=1`: if one partition is up and considered an ISR, the topic will be available for writing.
    * `acks=all`:
        * `min.insync.replicas=1`: (default): the topic must have at least 1 partition up as an ISR (that includes the
          reader), and so we can tolerate two brokers being down.
        * `min.insync.replicas=2`: the topic must have at least 2 ISR up, and therefore we can tolerate at most one
          broker being down (in the case of replication factor of 3),
          and we have the guarantee that for every writing, the data will be at least written twice
        * `min.insync.replace=3`: this wouldn't make much sense for a corresponding replication factor of 3, and we
          couldn't tolerate any broker going down.
        * In summary, when `acks=all` with `replication.factor=N` and `min.insync.replicas=M` we can tolerate `N-M`
          brokers going down for topic availability purposes.
* `acks=all` and `min.insync.replicas=2` is the most popular option for data durability and availability and allows you
  to withstand at most the loss of `one` Kafka broker

### Producer Retries

___

* In case of transient failures, developers are expected to handle exceptions; otherwise the data will be lost.
* Example of transient failure:
    * `NOT_ENOUGH_REPLICAS` (due to `mini.insync.replicas` setting)
* There is a "`retries`" setting
    * defaults to 0 for Kafka<=2.0
    * defaults to 2147483647 for Kafka>=2.1
* The `retry.backoff.ms` setting is by default 100ms

#### Producer Timeouts

* If retries> 0, for example `retries=2147483647`, retries are bounded by a timeout
* Since Kafka 2.1, you can set: `delivery.timout.ms=120000==2 min`
* Records will be failed if they can't be acknowledged within `delivery.timeout.ms`

### Idempotent Producer

___

* In Kafka >=0.11, you can define an "idempotent producer" which won't introduce duplicated on network error
* Idempotent producers are great to guarantee a stable and safe pipeline!
* `They are the default since Kafka 3.0, recommended to use them`
* They come with:
    * `retries=Integer.MAX_VALUE`(2^31-1=2,147,483,647)
    * `max.in.flight.requests=1` (Kafka==0.11)
    * `max.in.flight.requests=5` (Kafka>=1.0 - higher performance & keep ordering - KAFKA-5494)
    * `acks=all`
* These settings are applied automatically after your producer has started if not manually set
* Just set: `producerProps.put("enable.idempotence",true);`

### Kafka Producer defaults

___

* `Since Kafka 3.0`, the producer is "safe" by defaults:
    * `acks=all` (-1)
    * `enable.idempotence=true`
* `With Kfka 2.8 and lower`, the producer by default comes with:
    * `acks=1`
    * `enable.idempotence=false`

### Safe Kafka Producer—Summary

___

* `Since Kafka 3.0`, the producer is "safe" by default, otherwise upgrade your clients or set the following settings:
* `acks=all`
    * Ensures data is properly replicated before an ack is received
* `min.insync.replicas=2` (broker/topic level)
    * Ensures two brokers in ISR at least have the data after an ack
* `enable.idempotence=true`
    * Duplicates are not introduced due to network retries
* `retries=MAX_INT` (producer level)
    * Retry until `delivery.timeout.ms` is reached
* `delivery.timeout.ms=12000`
    * Fail after retrying for 2 minutes
* `max.in.flight.requests.per.connection=5`
    * Ensures maximum performance while keeping message ordering

### Message Compression at the Producer level

___

* Producer usually sends data that is text-based, for example, with JSON data
* In this case, it is important to apply compression to the producer
* Compression can be enabled at the Producer level and doesn't require any configuration change in the Brokers or in the
  Consumers
* `compression.type` can be `none` (default), `gzip`, `lz4`, `snappy`, `zstd` (Kafka 2.1)
* Compression is more effective, the bigger the batch of messages being sent to Kafka!
* Benchmarks
  here: [https://blog.cloudflare.com/squeezing-the-firehose/](https://blog.cloudflare.com/squeezing-the-firehose/)

#### Message Compression

* The compressed batch has the following advantage:
    * Much smaller producer request size (compression ratio up to 4x!)
    * Faster to transfer data over the network => less latency
    * Better throughput
    * Better disk utilisation in Kafka (stored messages on disk are smaller)
* Disadvantages (very minor):
    * Producers must commit some CPU cycles to compression
    * Consumers must commit some CPU cycles to decompression
* Overall:
    * Consider testing `snappy` or `lz4` for optimal speed / compression ratio (test others too)
    * Consider tweaking `linger.ms` and `batch.size` to have bigger batches, and therefore more compression and higher
      throughput
    * Use compression in production

#### Message Compression at the Broker / Topic level

* There is also a setting you can set at the broker level (all topics) or topic-level
* `compression.type=producer` (default), the broker takes the compressed batch from the producer client and writes
  directly to the topic's log file without recompressing the data
* `compression.type=none`: the broker decompresses all batches
* `compression.type=lz4` (for example)
    * If it's matching the producer setting, data is stored on disk as it is
    * If it's a different compression setting, batches are decompressed by the broker and then re-compressed using the
      compression algorithm specified
* `WARNING`: if you enable broker-side compression, it will consume extra CPU cycles

### `linger.ms` & `batch.size`

___

* By default, Kafka producers try to send records as soon as possible
    * It will have up to `max.in.flight.requests.per.connection=5`, meaning up to 5 message batches being in flight
      (being sent between the producer in the broker) at most
    * After this, if more messages must be sent while others are in flight, Kafka is smart and will start batching them
      before the next batch sends
* This smart batching helps increase throughput while maintaining very low latency
    * Added benefit: batches have higher compression ratio so better efficiency
* Two settings to influence the batching mechanism:
    * `linger.ms`: (default 0) how long to wait until we send a batch. Adding a small number, for example, 5ms helps add
      more messages in the batch at the expense of latency
    * `batch.size`: If a batch is filled before `linger.ms`, increase the batch size

#### `batch.size` (default 16KB)

* Maximum number of bytes that will be included in a batch
* Increasing a batch size to something like 32KB or 64KB can help increase compression, throughput and efficiency of
  requests
* Any message that is bigger than the batch size will not be batched
* A batch is allocated per partition, so make sure that you don't set it to a number that's too high, otherwise you will
  run waste memory!
* You can monitor the average batch size metric using `Kafka Producer Metrics`

#### High-Throughput Producer

* Increase `linger.ms` and producer will wait a few ms for the batches to fill up before sending them.
* If you are sending full batches and have memory to spare, you can increase `batch.size` and send larger batches
* Introduce some producer-level compression for more efficiency in sending

```java
// high throughput producer (at the expense of a bit of latency and CPU usage)
properties.setProperty(ProducerConfig.COMPRESSION_TYPE_CONFIG, "snappy");
properties.setProperty(ProducerConfig.LINGER_MS_CONFIG, "25");
properties.setProperty(ProducerConfig.BATCH_SIZE_CONFIG, Integer.toString(32*1024));
```

### Producer default partitioner and sticky partitioner

___

#### Producer Default Partitioner when `key!=null`

* `Key Hashing` is the process of determining the mapping of a key to partition
* In the default Kafka partitioner, the keys are hashed using the `murmur2 algorithm`

```java
targetPartition = Math.abs(Utils.murmur2(keybytes)) % (numPartitions - 1) 
```

* This means that the same key will go to the same partition, and adding partitions to a topic will completely alter the
  formula
* It is most likely preferred to not override the behavior of the partitioner, but it is possible to do so
  using `partitioner.class`

#### Producer Default Partitioner when `key=null`

* When `key=null`, the producer has a `default partitioner` that varies
    * `Round Robin`: for Kafka 2.3 and below
    * `Sticky Partitioner`: for Kafka 2.4 and above
* `Sticky Partitioner` improves the performance of the producer especially when high throughput when the key is null

#### Producer Default Partitioner Kafka>2.4 Sticky Partitioner

* It would be better to have all the records sent to a single partition and not multiple partitions to improve batching
* The producer `sticky partitioner`:
    * We "stick" to a partition until the batch is full or `linger.ms` has elapsed
    * After sending the batch, the partition that is sticky changes
* Larger batches and reduced latency (because larger requests, and `batch.size` more likely to be reached)
* Over time, records are still spread evenly across partitions