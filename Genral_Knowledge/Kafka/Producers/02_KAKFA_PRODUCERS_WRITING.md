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