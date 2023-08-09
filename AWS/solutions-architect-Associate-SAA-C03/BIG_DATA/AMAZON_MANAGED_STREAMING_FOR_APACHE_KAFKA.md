#### Amazon MSK Overview

___

* `Apache Kafka`: Fully managed service for running data streaming applications that leverage `Apache Kafka`.
* `Control Plane`: Provides control-plane operations. Creates, updates and deletes clusters as required.
* `Data Plane`: Leverage Kafka data-plane operations for producing and consuming streaming data.
* `Existing Applications`: Open-source versions of Apache Kafka allow support for existing apps, tools, and plugins.

#### Important Components and Concepts

___

* `Broker Nodes`: Specify the `amount of broker nodes per AZ` you want at time of cluster creation.
* `ZooKeeper Nodes`: ZooKeeper nodes are `created for you`.
* `Producers, Consumers and Topics`: Kafka data-plane operations will allow `creation of topics` and ability
  to `produce/consume data`.
* `Flexible Cluster Operations`: Perform `cluster operations` with the console, AWS CLI or APIs within any SDK.

#### Resiliency in Amazon MSK

___

* `Automatic Recovery`: Automatic `detection` and `recovery` from common failure scenarios. Minimal impact.
* `Detection`: Detected broker failures result `mitigation` of `replacement` of unhealthy nodes.
* `Reduce Data`: `Tires to reuse storage from older brokers` during failures to reduce data needing replication.
* `Time Required`: Impact time is limited to however long it takes Amazon MSK to `complete detection and recovery`.
* `After Recovery`: After successful recovery, producers and consumer apps continue
  to `communicate with the same broker IP as before`.

#### Amazon MSK: Good to Know

___

* `MSK Serverless`: Cluster type with Amazon MSK offering `serverless cluster management`. Automatic provisioning and
  scaling.
* `Fully Compatible`: MSK Serverless is `fully compatible with Apache Kafka`. Use the same client apps for producing and
  consuming data.
* `MSK Connect`: Allow developers to `easily stream data` to and from Apache Kafka clusters.

#### Security and Logging

___

1. Integration with `Amazon KMS` for SSE requirements.
2. Encryption at rest by default.
3. `TLS 1.2 for encryption in transit` between brokers in clusters.
4. Deliver broker logs to `Amazon CloudWatch, Amazon S3` and `Amazon Kinesis Data Firehose`.
5. `Metrics` are gathered and sent to CloudWatch.
6. All Amazon MSK API calls are logged to `AWS CloudTrail`.

#### Exam Tips:

___

1. `Apache Kafka`: `Fully managed AWS service` for running and building `Apache Kafka` data streaming applications.
2. `Control Plane`: Service handles control-plane operations: `creation`, `updating` and `deletion` of clusters.
3. `Data Plane`: Leverage the `same Apache Kafka data-plane operations` for producing and consuming data.
4. `Automatic Recoveries`: Service `detects and automatically mitigates` most of the common failures.
5. `Encryption`: Integrates with `Amazon KMS for SSE` needs. Uses `TLS 1.2 for in-transit` communications.
6. `Logging`: Push broker logs to `CloudWatch, S3` or `Kinesis Data Firehose`. API calls are logged to `CloudTrail`.