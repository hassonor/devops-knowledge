#### 4 Questions to Ask in the Exam:

___

1. What kind of database work?
2. How much data do you have?
3. Is serverless a requirement?
4. How do we optimize costs?

#### Redshift and EMR

___

* `While Redshift is a relational database`, It's not a replacement for RDS in traditional applications.
* `Redshift only supports single-AZ deployment`. You can create multiple clusters in different AZs, but there are
  technically separate deployments, It's not highly available by default.
* `EMR is made up of EC2 instances`: This means you can employ your standard EC2 instance cost-saving measures.

#### Kinesis, Athena and Glue

___

* `Kinesis is the only service with a real-time response`: If the question asks for a real-time solution to processing
  or moving data, look for and answer that includes Kinesis.
* `SQS and Kinesis can both be queues`: Each service has its pros and cons. SQS is easier and simpler, and Kinesis is
  faster and can store data for up to a year.
* `Serverless SQL means Athena`: Anytime serverless SQL or querying data that is stored in S3 comes up, think Athena.
* `Glue is serverless ETL`. It can help create that schema for your data when paired with Athena.

#### QuickSight and OpenSearch or ElasticSearch

___

* `Creating a dashboard`? QuickSight is your go-to tool for visualizing data.
* `OpenSearch` is a primary used for analyzing log files and various documents, especially within an ETL process.
* `Amazon OpenSearch Service` and Amazon Elasticsearch Service (predecessor) are extremely similar, and either may
  appear on the exam for the time being. They both follow the same concepts.

#### Data pipeline

___

* It is a managed ETL service within AWS.
* Implement automated workflows for movement and transformation of your data.
* It integrates with storage services (e.g., RDS and S3) and compute services (e.g, EC2 and EMR).
* Data-driven and task-dependent ETL workloads are a perfect use cases.

#### Amazon Managed Streaming for Apache Kafka (MSK)

___

* It is an AWS managed service for building and running Apache Kafka streaming applications.
* The service handles control plane operations for you (creation, update, and deletion).
* You manage data plane operations.
* Push broker logs to CloudWatch, S3, or Kinesis Data Firehose.
* API calls are logged to CloudTrail.