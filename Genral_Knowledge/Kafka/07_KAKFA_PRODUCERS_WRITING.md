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
it may **retry** sending the message a few more times before giving up and returning an erro. 