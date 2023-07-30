#### What is Kinesis?

___
Kinesis allows you to ingest, process and analyze `real-time streaming data`. You can think of it as a huge data highway
connected to your AWS account.

#### Data Streams and Data Firehose

___

* **Data Streams**:
    * **Purpose**: Real-time streaming for ingesting data
    * **Speed**: Read Time
    * **Difficulty**: You are responsible for creating the consumer and scaling the stream.
* **Data Firehose**:
    * **Purpose**: Data transfer tool to get information to S3, Redshift, Elasticsearch or Splunk
    * **Speed**: Near real time (within 60 seconds)
    * **Difficulty**: Plug and play with AWS architecture

#### Kinesis Data Analytics: Analyze data using standard SQL

___

* `Easy`: It's very simple to tie Data Analytics into your Kinesis pipeline. It's directly supported by Data Firehose
  and Data Streams.
* `No Servers`: This is fully managed, real-time serverless service. It will automatically handle scaling and
  provisioning of needed resources.
* `Cost`: You only pay for the amount of resources you consume as your data passes through.

#### Kinesis vs. SQS

___

* `SQS`: SQS is messaging broker that is simple to use and doesn't require much configuration. It doesn't offer
  real-time message delivery.
* `KINESIS`: Kinesis is a bit more complicated to configure and is mostly used in big data applications. It does provide
  real-time communication.

#### Exam Tip: Real Time? Think Kinesis!

___

* There are very few services in AWS that offer "real-time" processing. Kinesis is one of the few services that offers
  this speed.
* If you are faced with a question that asks for real-time processing or streaming of data, look for an answer that
  included Kinesis.

#### Exam Tips: Kinesis

___

* `Kinesis vs. SQS`: Both are message brokers, but only Kinesis is real time.
* `Scaling`: Data Streams does not automatically scale. `Data Firehose` does.
* `Transformaing Data`: Data Analytics is the easiest way to process data going through Kinesis using SQL.