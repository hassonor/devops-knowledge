#### RDS: Exam Tips

1. **RDS Database Types**: SQL Server, Oracle, MySQL, PostgreSQL, MariaDB, and Amazon Aurora.
2. **RDS is for OLTP Workloads**: Great for processing lots of small transactions, like customer orders, banking
   transactions, payments and booking systems.
3. **Not Suitable for OLAP**: Use Redshift for data warehousing and OLAP tasks, like analyzing large amounts of data,
   reporting and sales forecasting.

#### Read Replicas - Key Facts

1. **Scaling Read Performance**: Primarily used for scaling, **not** for disaster recovery!
2. **Requires Automatic Backup**: Automatic backups must be enabled in order to deploy a read replica.
3. **Multiple Read Replicas Are Supported**: MySQL, MariaDB, PostgreSQL, Oracle and SQL Server allow you to add up to 5
   read replicas to each DB instance.

#### RDS Multi-AZ and Read Replicas

1. **Multi-AZ**:
    * An exact copy of your production database in another Availability Zone.
    * Used for disaster recovery.
    * In the event of a failure, RDS will automatically fail over to the standby instance.
2. **Read Replica**:
    * A read-only copy of your primary database in the same Availability Zone, cross-AZ or cross-region.
    * Used to increase or scale read performance.
    * Great for read-heavy workloads and takes the load off your primary database for read-only workloads (e.g.,
      Business Intelligence reporting jobs).

#### Amazon Aurora: 4 Aurora Exam Tips

* 2 copies of your data are contained in each Availability Zone, with a minimum of 3 Availability Zones. 6 copies of
  your data.
* You can share Aurora snapshots with other AWS accounts.
* 3 types of replicas available: Aurora replicas, MySQL replicas and PostgreSQL replicas. Automated fail over is only
  available with Aurora replicas.
* Aurora has automated backups turned on by default. You can also take snapshots with Aurora. You can share these
  snapshots with other AWS accounts.

#### Study Tip: Aurora Serverless Use Cases

* Aurora Serverless provides a **relatively simple, cost-effective option** for infrequent, intermittent or
  unpredictable workloads.

#### 4 Facts about DynamoDB

1. Stored on SSD storage
2. Spread across 3 geographically distinct data centers
3. Eventually consistent reads (default)
4. Strongly consistent reads

#### What's the difference between eventually consistent reads and strongly consistent reads?

* **Eventually**: Consistency across all **copies of data is usually reached within a second**. Repeating a read after a
  short time should return the updated data. Best read performance.
* **Strongly**: A strongly consistent read **return a result that reflects all writes** that received a successful
  response prior to the read.

#### DynamoDB Transactions

* Multiple "all-or-nothing" operations
* Financial transactions
* Fulfilling orders
* 3 options for reads: eventual consistency, strong consistency and transactional.
* 2 options for writes: standard and transactional
* Up to 25 items or 4 MB of data

* If you see any scenario question that mentions ACID requirements, **think DynamoDB transactions.**
* DynamoDB transactions provide developers atomicity, consistency, isolation and durability (ACID) across one or more
  tables withing a single AWS account and region.
* All-or-nothing transactions.

#### DynamoDB On-Demand Backup and Restore

* Full backups at any time
* Zero impact on table performance or availability
* Consistent within seconds and **retained until deleted**
* Operated within same region as the source table

#### DynamoDB Point-In-Time Recovery (PITR)

* Protects against accidental writes or deletes
* Restore to any point in the last **35 days**
* Incremental backups
* Not enabled by default
* Latest restartable: **5 minutes** in the past

#### Streams

* Time-ordered sequence of item-level changes in a table
* Stored for **24 hours**
* Inserts, updates and deletes
* Combine with Lambda functions for functionality like stored procedures

#### Managed Multi-Master, Multi-Region Replication

* Globally distributed applications
* Based on DynamoDB streams
* Multi-region redundancy for disaster recovery or high availability
* No application rewrites
* Replication latency under **one second**

#### Operating MongoDB-Compatible Databases in Amazon DocumentDB

* A typical question might be around moving your MongoDB data to AWS.
    1. MongoDB On-Premises
    2. AWS Databases Migration Service
    3. Amazon DocumentDB
* For scenario questions where they talk about migrating MongoDB from on-premises to AWS, **think Amazon DocumentDB**.

#### Exam Tips: Scenario Question about Cassandra

* If you see a scenario question about migrating a big data Cassandra cluster to AWS... **Think of AWS Keyspaces**

#### Exam Tip: Neptune is ofter used as a distractor

* If the scenario is **not** talking about graph databases, **do not** select Neptune as an answer.

#### Exam Tip: QLDB is ofter used as a distractor

* If the scenario is **not** talking about immutable databases, **do not** select Amazon Quantum Ledger Database as an
  answer.

#### Exam Tips: Scenario Question about Time-Series Data?

* See a scenario question about where to store a large amount of time-series data for analysis? **Think of Timestream**