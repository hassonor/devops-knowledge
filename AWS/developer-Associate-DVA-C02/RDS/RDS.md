#### RDS Advantages

___

* Up and Running in Minutes.
* Multi-AZ
* Failover capability
* Automated backups
* NOTE: a manual installation in your own datacenter could take 8 days or longer.

#### OLTP and OLTP

___
Understand the difference between `Online Transaction Processing (OLTP)` and `Online Analytics Processing (OLAP)`.

* `OLTP`:
    * Process data from transactions in real-time, e.g., customer orders, banking transactions, payments and booking
      systems.
    * OLTP is all about data processing, and completing large numbers of small transactions in real-time.
* `OLAP`:
    * Processes complex queries to analyze historical data, e.g., analyzing net profit figures from the past 3 years and
      sales forecasting.
    * OLAP is all about data analysis using large amounts of data and complex queries that take a long time to complete.
    * `OLAP Example`:
        * **Net Profit Analysis**: You have been asked to produce a report comparing net profits for car sales in 3
          different regions.
        * **Large Amounts of Data**:
            * Sum of cars sold in each region.
            * Unit cost for each region.
            * Sales price of each car.
            * Sales price compared to the unit cost.
        * **Analysis is not Transactions**
            * RDS is not suitable for analyzing large amount of data. Use a data warehouse like RedShift which is
              optimized for OLAP.

### RDS Backups and Snapshots

___

#### Types of RDS Backup

1. `Database Snapshot`:
    * Manual, adhoc, and user-initiated. It provides a snapshot of the storage volume attached to the DB instance.
2. `Automated Backup`:
    * Enabled by default.
      It creates daily backups or snapshots that run during a backup window that you define.
      Transaction logs are used to replay transactions.

#### RDS Automated BackUp

1. `Point-In-Time Recovery`: Recover your database to any point in time within a "retention period" of 1-35 days.
2. `Full Daily Backup`: RDS takes a full daily backup, or snapshot, and also stores transaction logs throughout the day.
3. `The Recovery Process`: When you do a recovery, AWS will first choose the most recent daily backup a then apply
   transaction logs relevant to that day, up to the recovery point
4. `Stored In S3`: Automated backups and snapshots are stored in S3.
5. `Free Storage`: You get free storage space equal to the size of your database.
   So if you have an RDS instance of
   10GB, you will get 10GB worth of storage.
6. `Defined Backup Window`: During the backup window, storage I/O may be suspended for a few seconds while the backup
   process initializes, and you may experience increased latency at this time.

#### RDS Database Snapshot

* `Not Automated`: DB Snapshots are done manually (i.e., they are user-initiated)
* `No Retention Period`: Manual snapshots are not deleted even after you delete the original RDS instance, including any
  automated backups.
* `Backup to A Known State`: Back up your DB instance in a known state as frequently as you wish, and then restore to
  that specific state at any time.

#### RDS Backups and Snapshots Encryption

* `Enabling Encryption`: Enable encryption at creation time by selecting the encryption option in the console.
* `Integrated with KMS`: Encryption is done using the AWS key Management Service (KMS) service. AES-256 encryption.
* `Includes All DB Storage`: Includes all the underlying storage, automated backups, snapshots, logs, and read replicas.