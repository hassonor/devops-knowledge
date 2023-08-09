#### AWS Data Pipeline Definition

___
`AWS Data Pipeline` is a managed `Extract`, `Transform`, `Load (ETL)` service for automating movement and transformation
of your data.

#### AWS  Data Pipeline Overview

___

* `Data Driven`: Define `data-driver workflows` Steps are dependent on previous tasks completing successfully.
* `Parameters`: Define your `parameters` for data transformations. AWS Data Pipeline `enforces your chosen logic`.
* `Highly Available`: AWS hosts the infrastructure on `highly available` and `distributed infrastructure`.
  Also, `fault-tolerant`.
* `Handling Failures`: `Automatically retries` failed activities. Configure `notifications via Amazon SNS` for failures
  or even successful task.
* `AWS Storage Services`: Integrates easily with `Amazon DynamoDB`, `Amazon RDS`, `Amazon Redshift` and `S3`.
* `AWS Compute`: Works with `Amazon EC2` and `Amzon EMR` for compute needs.

#### Components To Know:

___

* `Pipeline Definition`: Specify business logic of your data management needs.
* `Managed Compute`: Service will create EC2 instances to preform your activities -- or leverage existing EC2.
* `Task Runners`: Task runners (EC2) poll for different tasks and perform them with found.
* `Data Nodes`: Define the locations and types of data that will be input and output.
* `Activities`: Activities are pipeline components that define the work to preform.

#### Popular Use Cases:

___

1. Processing data in EMR using Hadoop streaming.
2. Importing or exporting DynamoDB data.
3. Copying CSV files or data between S3 buckets.
4. Exporting RDS data to S3.
5. Copy data to Redshift

#### Exam Tips: AWS DATA Pipeline

___

* `Managed ETL`: Managed AWS service for `ETL workflows` that automates movements and transformation of your data.
* `Data Driven`: Use `data-driven workflows` to create dependencies between tasks and activities.
* `Storage Information`: There are several integrations, including `DynamoDB`, `RDS`, `Redshift`, and `S3`.
* `Compute Integrations`: Easily integrate it with `EC2` and `EMR` for managed compute needs.
* `Amazon SNS`: Leverage SNS for any failure notifications. Use it successes and other event-driven workloads as well.
* `Keywords`: Anything related to `managed ETL services`, and `automatic retries` for data-driven workflows.