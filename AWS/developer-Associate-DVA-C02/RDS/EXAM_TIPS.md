#### Exam Tips

___

1. `RDS Database Types`: SQLServer, Oracle, MySQL, PostgreSQL, MariaDB and Amazon Aurora.

2. `RDS is for OLTP Workloads`: Great for processing lots of small transactions, like customer orders, banking
   transactions, payments and booking systems.
3. `Not suitable for OLAP`: Use RedShift for data warehousing and OLAP tasks, like analyzing large amounts of data,
   reporting and sales forecasting.

#### RDS connected to EC2 instance

___

1. `Launch an RDS Instance`: Using the AWS console.
2. `Launch an EC2 Instance`: Install a MySql database client.
3. `Connect to the RDS Instance`: Connect from our EC2 instance, using the MySql database client.

#### RDS Multi-AZ and Read Replica Exam Tips

___

1. `Multi-AZ`:
    * An exact copy of your production database in another AZ.
    * Used for Disaster Recovery.
    * In the event of a failure, RDS will automatically failover to the standby instance.
2.
    * A read-only copy of your primary database in the same AZ, cross-AZ of cross-region.
    * Used to increase or scale read performance.
    * Great for read-heavy workloads and take the load off your primary database for read-only workloads, e.g.,
      Business Intelligence reporting jobs.

### Backups vs. Snapshots - Exam Tips

___

* `Automated Backup`:
    * Automated, enabled by default, you define the backup window
    * Point-in-time snapshot plus transaction logs
    * Retention period of 1-35 days
    * It can be used to recover your database at any point in time within the retention period
* `DB Snapshot`:
    * User-Initiated, ad-hoc
    * Point-in-time snapshot only
    * No retention period; stored indefinitely
    * Used to back up your DB instance to a known state and restore to that specific state at any time, e.g., before
      making a change to the database.

#### EDS Encryption Exam Tips:

1. `Enable at Creation`: Includes all underlying storage, automated backups, snapshots, logs and read replicas.
2. `KMS Integration`: Uses the AWS Key Management Service (KMS) service for AES-256 encryption.
3. `Existing RDS Instances`: Take a snapshot, encrypt the snapshot, then create a new RDS instance from the encrypted
   snapshot.