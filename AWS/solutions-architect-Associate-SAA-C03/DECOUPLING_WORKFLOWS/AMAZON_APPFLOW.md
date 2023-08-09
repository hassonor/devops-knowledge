#### What is AppFlow?

 ___

1. `Integration`: Fully managed integration service for exchanging data between SaaS apps and AWS services.
2. `Ingest Data`: Pulls data records from third-party SaaS vendors and stores them in Amazon S3.
3. `Bi-Directional`: Bi-direction data transfers with limited combinations.

#### Important Terms and Concepts

___

* **Flow**: Flows `transfer data between sources and destinations`; a variety of SaaS applications are supported
* **Data Mapping**: Determines `how your source data is stored` within your destinations.
* **Filters**: Criteria to `control which data is transferred` from a source to a destination.
* **Trigger**: `How the flow is started`. Supported types: `Run on demand`, `Run on event`,`Run on schedule`.

#### AppFlow Use Cases:

___

1. Transferring Salesforce records to Amazon Redshift
2. Ingesting and analyzing Slack conversations in S3
3. Migrating Zendesk and other help desk support tickets to Snowflake
4. Transferring aggregate data on a scheduled basis to S3* (Up to 100 GB per flow)

#### Exam Tips: AppFlow

___

* `What is AppFlow?`: Fully managed integration service for **transferring data to and from SaaS vendors and
  applications**.
* `Bi-Directional`: Flows can bidirectional between AWS services and SaaS applications. Ensure your configuration is
  supported.
* `Exam Scnarios`:
    * Watch for solutions needing `easy (managed) and fast transfer` of SaaS or third-party vendor data into AWS
      services.
    * Example: An application needs to reference large amounts of SaaS data regularly, and the data needs to be accessed
      from withing S3.