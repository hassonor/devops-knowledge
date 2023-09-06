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
//        properties.setProperty("bootstrap.servers","127.0.0.1:9092");

        // connect to Counduktor Playground
        properties.setProperty("bootstrap.servers", "cluster.playground.cdkt.io:9092");
        properties.setProperty("security.protocol", "SASL_SSL");
        properties.setProperty("sasl.jaas.config", "org.apache.kafka.common.security.plain.PlainLoginModule required username=\"63bSmEDvzJcS0NEDhtFOAT\" password=\"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2F1dGguY29uZHVrdG9yLmlvIiwic291cmNlQXBwbGljYXRpb24iOiJhZG1pbiIsInVzZXJNYWlsIjpudWxsLCJwYXlsb2FkIjp7InZhbGlkRm9yVXNlcm5hbWUiOiI2M2JTbUVEdnpKY1MwTkVEaHRGT0FUIiwib3JnYW5pemF0aW9uSWQiOjc2NDA1LCJ1c2VySWQiOjg4ODk1LCJmb3JFeHBpcmF0aW9uQ2hlY2siOiIyYjFmZDY0ZC0yODM5LTRkY2UtOWM0Zi04ZmMzZGE3ZGE0Y2QifX0.Ufrk89wYDB5toivGpncsSPr4A4pbHCQqWSbfj4L_nEw\";");
        properties.setProperty("sasl.mechanism", "PLAIN");
        properties.setProperty("bootstrap.servers", "cluster.playground.cdkt.io:9092");

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
//        properties.setProperty("bootstrap.servers","127.0.0.1:9092");

        // connect to Counduktor Playground
        properties.setProperty("bootstrap.servers", "cluster.playground.cdkt.io:9092");
        properties.setProperty("security.protocol", "SASL_SSL");
        properties.setProperty("sasl.jaas.config", "org.apache.kafka.common.security.plain.PlainLoginModule required username=\"63bSmEDvzJcS0NEDhtFOAT\" password=\"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2F1dGguY29uZHVrdG9yLmlvIiwic291cmNlQXBwbGljYXRpb24iOiJhZG1pbiIsInVzZXJNYWlsIjpudWxsLCJwYXlsb2FkIjp7InZhbGlkRm9yVXNlcm5hbWUiOiI2M2JTbUVEdnpKY1MwTkVEaHRGT0FUIiwib3JnYW5pemF0aW9uSWQiOjc2NDA1LCJ1c2VySWQiOjg4ODk1LCJmb3JFeHBpcmF0aW9uQ2hlY2siOiIyYjFmZDY0ZC0yODM5LTRkY2UtOWM0Zi04ZmMzZGE3ZGE0Y2QifX0.Ufrk89wYDB5toivGpncsSPr4A4pbHCQqWSbfj4L_nEw\";");
        properties.setProperty("sasl.mechanism", "PLAIN");
        properties.setProperty("bootstrap.servers", "cluster.playground.cdkt.io:9092");

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