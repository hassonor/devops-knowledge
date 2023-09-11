### Producer Overview

___
We start producing messages to Kafka by create `ProducerRecord`,
which must include the topic we want to send the record to and a value.
<br>
Optionally, We can also specify `key`, `parition`, `timestamp`, and/or `collection of headers`.<br>
Once we send the `ProducerRecord`,
the first thing the producer will do is serialize the key and value objects to byte arrays,
so they can be sent over the network.
<br>
Next, if we didn't explicitly specify a partition, the data is sent to a `partitioner`.
The `partition` is selected; the producer knows which `topic` and `partition` the record will go to.
It then adds the record to a batch of records that will also be sent to the same `topic` and `partition`.
A separate thread is responsible for sending those batches of records to the appropriate **kafka brokers**.
<br>
When the broker receives the messages, it sends back a response.
If the messages were successfully written to kafka,
it will return a `RecordMetadata` object with the `topic`,
`partition` and the `offset` of the record withing the `partition`.
<br>
If the broker failed to write the message, it will return an error.
When the producer receives an error,
it may **retry** sending the message a few more times before giving up and returning an error.

### Constructing Kafka Producer

___
The first step in writing messages to kafka is
to create a producer object with the properties you want to pass to the producer.
A kafka producer has three mandatory properties:

1. `bootstrap.servers`: List of `host:port` pairs of brokers that the producer will use to establish initial connection
   to the Kafka cluster.
   This list doesn't need to include all brokers,
   since the producer will get more information after the initial connection.
   But it is recommended to include at least two,
   so in case one broker goes down, the producer will still be able to connect to the cluster.
2. `key.serializer`: Name of a class that will be used to `serialize` the keys of the records we will produce to Kafka.
3. `value.serializer`: Name of a class that will be used to `serialize` the values of the records we will produce to
   Kafka.
   The same way you set `key.serializer` to a name of a class that will serialize the message key object to a byte
   array,
   you set `value.serializer` to a class that will `serialize` the message object.

The following code snippet shows
how to create a new producer by setting just the mandatory parameters and using defaults for everything else:

```java

// set producer properties
Properties properties = new Properties();
properties.put("bootstrap.servers", "broker1:9092, broker2:9092");

properties.put("key.serializer","org.apache.kafka.common.serialization.StringSerializer");
properties.put("value.serializer","org.apache.kafka.common.serialization.StringSerializer");

// create the Producer
KafkaProducer<String, String> producer = new KafkaProducer<>(properties);
```

There are three primary methods of sending messages:

1. `Fire-and-forget`: We send a message to the server and don't really care if it arrives successfully or not.
   In the case of nonretriable errors or timeout, messages will get lost and the application will not get any
   information or exceptions about this.
2. `Synchronous send`: Technically, Kafka producer is always asynchronous—we send a message and the `send()` method
   return a `Future` object.
   However,
   we use `get()` to wait on the `Future` and see if the `send()` was successful or not before sending the next record.
3. `Asynchronous send`: We call the `send()` method with a callback function, which get triggered when it receives a
   response from the Kafka broker.

### Sending a Message to Kafka

___
The simplest way to send a message is as follows:

```java
ProducerRecord<String, String> record = new ProducerRecord<>("demo_java","Or Hasson");
try{
   producer.send(record);
} catch (Exception e){
   e.printStackTrace();
}
```

* The types of the key and value must match our key `serializer` and `value serializer` objects.

#### Sending a Message Synchronously

* The main trade-off involved is performance.
  If you send messages synchronously, the sending thread will spend this
  time waiting and doing nothing else, not even sending additional messages.
  This leads to very poor performance, and as a result, sync sends are usually not used in production applications.

The simplest way to send a message synchronously is as follows:

```java
ProducerRecord<String, String> record = new ProducerRecord<>("demo_java","Or Hasson");
try{
   producer.send(record).get();
   
} catch (Exception e){
   e.printStackTrace();
}
```

* Here, we are using `Future.get()` to wait for a replay from Kafka. This method will throw an exception if the record
  is not sent successfully to Kafka.
  If there were no errors,
  we will get a `RecordMetadata` object that we can use to retrieve the offset the message was written to and other
  metadata.
* `KafkaProducer` has two types of errors. `Retriable` errors are those that can be resolved by sending the message
  again.
  A "not leader for partition"
  error can be resolved when a new leader is elected for the partition and the client metadata is refreshed.
  `KafkaProducer` can be configured to retry those errors automatically,
  so the application code will get retriable exceptions
  only when the number of retries was exhausted and the error was not resolved.

#### Sending a Message Asynchronously

To send a message asynchronously and still handle error scenarios,
the producer supports adding a callback when sending a record.

```java
private class DemoProducerCallback implements Callback {
    @Override
    public void onCompletion(RecordMetadata recordMetadata, Exception e){
        if(e != null){
            e.printStackTrace();
       } 
    }
}

ProducerRecord<String, String> record = new ProducerRecord<>("CustomCountry","Biomedical Materials", "Israel");
producer.send(record, new DemoProducerCallback());
```

* To use callbacks, you need a class that implements the `org.apache.kafka.clients.producer.Callback` interface, which
  has a single function- `onCompletion()`.
* If Kafka returned an error, `onCompletion()` will have a nonnull exception. Here we "handle" it by printing, but
  production code will probably have more robust error handling functions.

### Configuring Producers

___

#### `client.id`

`client.id` is a logical identifier for the client and the application it is used in. This can be any string and will be
used by the brokers to identify messages sent from the client.
It is used in logging and metrics and for quotas.

#### `acks`

The `acks` parameter controls hos many partition replicas must receive the record
before the producer can consider the writing successful.
This option has a significant impact on the durability of written messages.

1. `acks=0`: The producer will not wait for a reply from the broker before assuming the message was sent successfully.
   This means that if something goes wrong and the broker does not receive the message,
   the producer will not know about it, and the message will be lost, However,
   because the producer is not waiting for any response from the server,
   it can send messages as fast as the network will support, so this setting can be used to achieve very high
   throughput.
2. `acks=1`: The producer will receive a success response from the broker the moment the leader replica receives the
   message.
   If the message can't be written to the leader (e.g., if the leader creased and a new leader was not elected yet),
   the producer will receive an error response and can retry sending the message, avoiding potential loss of data.
   The message can still get lost
   if the leader crashes and the latest messages were not yet replicated to the new leader.
3. `acks=all`: The producer will receive a success response from the broker once all in sync replicas receive the
   message.
   This is the safest mode
   since you can make sure more than one broker has the message and that the message will survive even in case of a
   crash.
   However, the latency we be even higher from `acks=1`,
   since we will be waiting for more than just one broker to receive the message.

### Message Delivery Time

This is the time we are willing to spend until Kafka responds successfully,
or until we are willing to give up and admin defeat.<br>
We divide the time spent sending a `ProduceRecord` into two time intervals that are handled separately:

* Time until an async call to `send()` returns. During this interval, the thread that called `send()` will be blocked.
* From the time an async call to `send()` returned successfully until the callback is triggered (with success of
  failure).
  This is the same as from the point
  a `ProduceRecord` was placed in a batch for sending until Kafka responds with success, non-retriable failure,
  or we run out of time allocated for sending.

#### max.block.ms

This parameter controls how long the producer may block when calling
`send()` and when explicitly requesting metadata via `partitionFor()`.
Those methods may block when the producer's send buffer is full or when metadata is not available.
When `max.block.ms` is reached, a timeout exception is thrown.

#### delivery.timeout.ms

This configuration will limit the amount of time spent from the point a record is ready for sending
(send() returned successfully and the record is placed in a batch);
until either the broker responds or the client gives up, including time spent on retries.

#### request.timeout.ms

This parameter controls how long the producer will wait for a reply from the server when sending data.
Note that this is the time spent waiting on each producer request before giving up;
it does not include retries, time spent before sending, and so on.
If the timeout is reached without a reply, the producer will either retry sending or complete the callback with
a `TimeoutException`

#### retries and retry.backoff.ms

When the producer receives an error message from the server, the error could be transient
(e.g., a lack of leader for a partition).
In this case,
the value of the `retries` parameter will control
how many times the producer will retry sending the message before giving up and notifying the client of an issue.
By default, the producer will wait 100ms between retries,
but you can control this using the `retry.backoff.ms` parameter.

#### linger.ms

`linger.ms` controls the amount of time to wait for additional messages before sending the current
batch. `KafkaProducer` sends a batch of messages either when the current batch is full or when the `linger.ms` limit is
reached.
By default, the producer will send messages as soon as there is a sender thread available to send them,
even if there's just one message in the batch.
By setting `linger.ms` higher than 0,
we instruct the producer
to wait a few milliseconds to add additional messages to the batch before sending it to the brokers.
This increased latency a little and significantly increases throughput--the overhead per message is much lower,
and compression, if enabled, is much better.

#### buffer.memory

This config sets the amount of memory the producer will use to buffer message waiting to be sent to brokers.
If messages are sent by the application faster than they can be delivered to the server,
the producer may run out of space,
and additional `send()` calls will block for `max.block.ms` and wait for space to free up before throwing an exception.
Note that unlike most producer exceptions, this timeout is thrown by `send()` and not by the resulting `Future`.

#### compression.type

By default, messages are sent uncompressed.
This parameter can be set to `snappy`,`gzip`,`lz4`,
or `zstd`,
in which case the corresponding compression algorithms will be used
to compress the data before sending it to the brokers.

* `snappy` compression was invented by Google to provide decent compression ratios with low-CPU overhead and good
  performance, so it is recommended in cases where both performance and bandwidth are concern.
* `gzip` compression will typically use more CPU and time but results in better compression ratios, so it is recommended
  in cases where network bandwidth is more restricted.
  By enabling compression, you reduce network utilization and storage,
  which is often a bottleneck when sending messages to Kafka.

#### batch.size

When multiple records are sent to the same partition, the producer will batch them together.
This parameter controls the amount of memory in bytes (not messages) that will be used for each batch.
When the batch is full, all the messages in the batch will be sent.
However, this does not mean that the producer will wait for the batch to become full.
The producer will send half-full batches and even batches with just a single message in them.
Therefore, setting the batch size too large will not cause delays in sending messages;
it will just use more memory for the batches.
Setting the batch size too small will add some overhead because the producer will need to send messages more frequently.







