### Kafka Producer: Java API - Callbacks

___

* how to write a basic producer to send data to Kafka
* View basic configuration parameters

```java 
package orhasson.com.demos.kafka;

import org.apache.kafka.clients.producer.KafkaProducer;
import org.apache.kafka.clients.producer.ProducerRecord;
import org.apache.kafka.common.serialization.StringSerializer;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.Properties;

public class ProducerDemo {
private static final Logger log = LoggerFactory.getLogger(ProducerDemo.class);

    public static void main(String[] args) {
        log.info("hello world");

        // create Producer Properties
        Properties properties = new Properties();

        // connect to localhost

        properties.setProperty("bootstrap.servers","127.0.0.1:9092");

        // set producer properties
        properties.setProperty("key.serializer", StringSerializer.class.getName());
        properties.setProperty("value.serializer", StringSerializer.class.getName());;

        // create the Producer
        KafkaProducer<String,String> producer = new KafkaProducer<>(properties);

        // create a producer Record
        ProducerRecord<String, String> producerRecord = new ProducerRecord<>("demo_java", "Hi, My name is Or Hasson");

        // send data
        producer.send(producerRecord);


        // tell the producer to send all data and block until done -- synchronous
        producer.flush(); // not needed here, wrote it just for showing the API

        // flush and close the producer
        producer.close();
        
    }
}
```

### Kafka Producer: Java API - Callbacks

___

* Confirm the partition and offset the message was sent to using Callbacks
* We will look at the interesting behavior `StickyPartition`

```java
package orhasson.com.demos.kafka;

import org.apache.kafka.clients.producer.*;
import org.apache.kafka.common.serialization.StringSerializer;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import java.util.Properties;

public class ProducerWithCallbackDemo {
    private static final Logger log = LoggerFactory.getLogger(ProducerWithCallbackDemo.class.getSimpleName());

    public static void main(String[] args) {
        log.info("hello world 2");

        // create Producer Properties
        Properties properties = new Properties();

        // connect to localhost
         properties.setProperty("bootstrap.servers","127.0.0.1:9092");

        // set producer properties
        properties.setProperty("key.serializer", StringSerializer.class.getName());
        properties.setProperty("value.serializer", StringSerializer.class.getName());

        properties.setProperty("batch.size", "400");

//        properties.setProperty("partitioner.class", RoundRobinPartitioner.class.getName());

        // create the Producer
        KafkaProducer<String, String> producer = new KafkaProducer<>(properties);

        for (int j = 0; j < 10; j++) {
            for (int i = 0; i < 30; i++) {
                // create a producer Record
                ProducerRecord<String, String> producerRecord = new ProducerRecord<>("demo_java", "hello world " + i);

                // send data
                producer.send(producerRecord, new Callback() {
                    @Override
                    public void onCompletion(RecordMetadata metadata, Exception e) {
                        // executes every time a record successfully sent or an exception is throws
                        if (e == null) {
                            // the record was successfully sent
                            log.info("Received new metadata \n" +
                                    "Topic: " + metadata.topic() + "\n" +
                                    "Partition: " + metadata.partition() + "\n" +
                                    "Offset: " + metadata.offset() + "\n" +
                                    "Timestamp: " + metadata.timestamp());
                        } else {
                            log.error("Error while producing", e);
                        }
                    }
                });
            }

            try {
                Thread.sleep(500);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }

        // tell the producer to send all data and block until done -- synchronous
        producer.flush(); // not needed here, wrote it just for showing the API

        // flush and close the producer
        producer.close();


    }
}
```

### Kafka Producer: Java API — with Keys

___

* Send non-null keys to the Kafka topic
* Same key = same partition

```java 
package orhasson.com.demos.kafka;

import org.apache.kafka.clients.producer.Callback;
import org.apache.kafka.clients.producer.KafkaProducer;
import org.apache.kafka.clients.producer.ProducerRecord;
import org.apache.kafka.clients.producer.RecordMetadata;
import org.apache.kafka.common.serialization.StringSerializer;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import java.util.Properties;

public class ProducerKeysDemo {
    private static final Logger log = LoggerFactory.getLogger(ProducerKeysDemo.class.getSimpleName());

    public static void main(String[] args) {

        // create Producer Properties
        Properties properties = new Properties();

        // connect to localhost
           properties.setProperty("bootstrap.servers","127.0.0.1:9092");

        // set producer properties
        properties.setProperty("key.serializer", StringSerializer.class.getName());
        properties.setProperty("value.serializer", StringSerializer.class.getName());

        // create the Producer
        KafkaProducer<String, String> producer = new KafkaProducer<>(properties);

        for (int j = 0; j < 2; j++) {
            for (int i = 0; i < 10; i++) {
                String topic = "demo_java";
                String key = "id_" + i;
                String value = "hello world " + i;

                // create a producer Record
                ProducerRecord<String, String> producerRecord = new ProducerRecord<>(topic, key, value);

                // send data
                producer.send(producerRecord, new Callback() {
                    @Override
                    public void onCompletion(RecordMetadata metadata, Exception e) {
                        // executes every time a record successfully sent or an exception is throws
                        if (e == null) {
                            // the record was successfully sent
                            log.info("Key: " + key + " | Partition: " + metadata.partition());
                        } else {
                            log.error("Error while producing", e);
                        }
                    }
                });
            }
            try {
                Thread.sleep(500);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }

        // tell the producer to send all data and block until done -- synchronous
        producer.flush(); // not needed here, wrote it just for showing the API

        // flush and close the producer
        producer.close();

    }
}
```

### Kafka Consumer: Java API - Basics + Graceful shutdown

___

* How to write a basic consumer to receive data from Kafka
* View basic configuration parameters
* Confirm we receive the data from the Kafka Producer written in Java
* Ensure we have a code in place to respond to termination signals

```java
package orhasson.com.demos.kafka;

import org.apache.kafka.clients.consumer.ConsumerRecord;
import org.apache.kafka.clients.consumer.ConsumerRecords;
import org.apache.kafka.clients.consumer.KafkaConsumer;
import org.apache.kafka.common.errors.WakeupException;
import org.apache.kafka.common.serialization.StringDeserializer;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import java.time.Duration;
import java.util.Arrays;
import java.util.Properties;

public class ConsumerWithShutdownDemo {
    private static final Logger log = LoggerFactory.getLogger(ConsumerWithShutdownDemo.class.getSimpleName());

    public static void main(String[] args) {
        log.info("I am a Kafka Consumer");

        String groupId = "my-java-application";
        String topic = "demo_java";

        // create Producer Properties
        Properties properties = new Properties();

        // connect to localhost
           properties.setProperty("bootstrap.servers","127.0.0.1:9092");

        // create consumer configs
        properties.setProperty("key.deserializer", StringDeserializer.class.getName());
        properties.setProperty("value.deserializer", StringDeserializer.class.getName());

        properties.setProperty("group.id", groupId);

        properties.setProperty("auto.offset.reset", "earliest");

        // create a consumer
        KafkaConsumer<String, String> consumer = new KafkaConsumer<>(properties);

        // get a reference to the main thread
        final Thread mainThread = Thread.currentThread();

        // adding the shutdown hook
        Runtime.getRuntime().addShutdownHook(new Thread() {
            public void run() {
                log.info("Detected a shutdown, let's exit by calling consumer.wakeup()...");
                consumer.wakeup();

                // join the main thread to allow the execution of the code in the main thread
                try {
                    mainThread.join();
                } catch (InterruptedException e) {
                    throw new RuntimeException(e);
                }
            }
        });
        
        try {

            // subscribe to a topic
            consumer.subscribe(Arrays.asList(topic));


            // poll for data
            while (true) {
                log.info("Polling");

                ConsumerRecords<String, String> records = consumer.poll(Duration.ofMillis(1000));
                for (ConsumerRecord<String, String> record : records) {
                    log.info("Key: " + record.key() + ", Value: " + record.value());
                    log.info("Partition: " + record.partition() + ", Offset: " + record.offset());
                }
            }
        } catch (WakeupException e) {
            log.info("Consumer is starting to shut down");
        } catch (Exception e) {
            log.error("Unexpected exception in the consumer", e);
        } finally {
            consumer.close(); // close the consumer, this will also commit offsets
            log.info("The consumer is now gracefully shut down.");
        }
    }
}
```

### Kafka Consumer: Java API - Consumer Groups

* Make your consumer in Java consume data as part of a consumer group
* Observe partition re-balance mechanism

### Consumer Groups and Partition Rebalance

___

* Moving partitions between consumers is called a rebalnce
* Reassignment of partitions happens when a consumer leaves or joins a group
* It also happens if an administrator adds new partitions into a topic

#### Eager Rebalance

* All consumers stop, give up their membership of partitions
* They rejoin the consumer group and get a new partition assignment
* During a short period of time, the entire consumer group stops processing
* Consumers don't necessarily "get back" the same partitions as they used to

### Cooperative Rebalance (Incremental Rebalance)

* Reassigning a small subset of the partitions from one consumer to another
* Other consumers that don't have reassigned partitions can still process uninterrupted
* It Can go through several iterations to find a "stable" assignment (hence "incremental")
* It Avoids "stop-the-world" events where all consumers stop processing data

#### Cooperative Rebalance, how to use?

* **Kafka Consumer**: `partition.assignment.strategy`
    * `RangeAssignor`: assign partitions on a per-topic basis (can lear to imbalance)
    * `RoundRobin`: assign partitions across all topics in round-robin fashion, optimal balance
    * `StickyAssignor`: balanced like `RooundRobin`, and then minimizes partition movements when consumer joins / leaves
      the group in order to minimize movements
    * `CooperativeStickyAssignor`: rebalance strategy is identical to `StickAssignor` but supports cooperative
      rebalances and therefore consumers can keep on consuming from the topic
    * `The default assignor is [RangeAssignor, CooperativeStickyAssignor]`, which will use the `RangeAssignore` by
      default,
      but allows upgrading to the `CooperativeStickyAssignor` with just a single rolling bounce
      that removes the `RangeAssignor` from the list.
* **Kafka Connect**: already implemented (enabled by default)
* **Kafka Streams**: turned on by default using `StreamsPartitionAssignor`

#### Static Group Membership

* By default, when a consumer leaves a group, its partitions are revoked and re-assigned
* If it joins back, it will have a new "member ID" and new partitions assigned
* if you specify `group.instance.id` it makes the consumer a `static member`
* Upon leaving, the consumer has up to `session.timeout.ms` to join back and get back its partitions (else they will be
  re-assigned), without triggering a rebalance
* This is helpful when consumers maintain local state and cache (to avoid re-building the cache)

```java
package orhasson.com.demos.kafka;

import org.apache.kafka.clients.consumer.ConsumerRecord;
import org.apache.kafka.clients.consumer.ConsumerRecords;
import org.apache.kafka.clients.consumer.CooperativeStickyAssignor;
import org.apache.kafka.clients.consumer.KafkaConsumer;
import org.apache.kafka.common.serialization.StringDeserializer;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.time.Duration;
import java.util.Arrays;
import java.util.Properties;

public class ConsumerCooperativeDemo {
    private static final Logger log = LoggerFactory.getLogger(ConsumerCooperativeDemo.class.getSimpleName());

    public static void main(String[] args) {
        log.info("I am a Kafka Consumer");

        String groupId = "my-java-application";
        String topic = "demo_java";

        // create Producer Properties
        Properties properties = new Properties();

        // connect to localhost
//        properties.setProperty("bootstrap.servers","127.0.0.1:9092");

        // create consumer configs
        properties.setProperty("key.deserializer", StringDeserializer.class.getName());
        properties.setProperty("value.deserializer", StringDeserializer.class.getName());
        properties.setProperty("group.id", groupId);
        properties.setProperty("auto.offset.reset", "earliest");
        properties.setProperty("partition.assignment.strategy", CooperativeStickyAssignor.class.getName());
//        properties.setProperty("group.instance.id", "..."); // strategy for static assignment

        // create a consumer
        KafkaConsumer<String, String> consumer = new KafkaConsumer<>(properties);

        // subscribe to a topic
        consumer.subscribe(Arrays.asList(topic));

        // poll for data
        while (true) {
            log.info("Polling");

            ConsumerRecords<String, String> records = consumer.poll(Duration.ofMillis(1000));
            for (ConsumerRecord<String, String> record : records) {
                log.info("Key: " + record.key() + ", Value: " + record.value());
                log.info("Partition: " + record.partition() + ", Offset: " + record.offset());
            }
        }

    }
}
```

### Kafka Consumer - Auto Offset Commit Behavior

___

* In the Java Consumer API, offsets are regularly committed
* Enable a reading scenario at least once by default (under conditions)
* Offsets are committed when you call `.poll()` and `auto.commit.interval.ms` has elapsed.
* Example: `auto.commit.interval.ms=500` and `enable.auto.commit=true` will commit
* _Make sure messages are all successfully processed before you call_ `poll()` _again_.
    * If you don't, you will not be in at-least-once reading scenario
    * In that (rare) case, you must disable `enable.auto.commit`, and most likely most processing to separate thread,
      and then from time-to-time call `.commitSync()` or `.commitAsync()` with the correct offsets manually (advanced).
