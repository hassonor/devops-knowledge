#### Exam Tips: 5 Aurora Exam Tips

___

* 2 copies of your data are contained in each Availability Zone, with a minimum of 3 Availability Zones. 6 copies of
  your data.
* You can share Aurora snapshots with other AWS accounts.
* 3 types of replicas available: Aurora replicas, MySQL replicas and PostgreSQL replicas. Automated fail-over is only
  available with Aurora replicas.
* Aurora has automated backups turned on by default. You can also take snapshots with Aurora. You can share these
  snapshots with other AWS accounts.
* Use Aurora Serverless if you want a simple, cost-effective option for infrequent, intermittent, or unpredictable
  workloads.

#### STUDY TIP: What is Aurora?

___

* Amazon Aurora is a **MySQL and PostgreSQL-compatible relational database engine** that combines the speed and
  availability of high-end commercial databases with the simplicity and cost-effectiveness of open-source databases.

#### STUDY TIP: Aurora Serverless Use Cases

___

* Aurora Serverless provides a **relatively simple, cost-effective option** for infrequent, intermittent, or
  unpredictable workloads.

#### Things to Know about Aurora

___

* Start with 10GB. Scales in 10-GB increments to 128 TB (storage Auto Scaling).
* Compute resources can scale up to 96 vCPUs and 768 GB of memory.
* 2 copies of your data contained in each Availability Zone, with minimum of 3 Availability Zones. 6 copies of your
  data.

#### Scaling Aurora

___

* Aurora is designed to **transparently handle the loss of up to 2 copies of data** without affecting database write
  availability and up to 3 copies without affecting read availability.
* Aurora **storage is also self-healing**. Data blocks and disks are continuously scanned for errors and repaired
  automatically.

#### 3 Types of Aurora Replicas Available

___

* **Aurora Replicas**: You can currently have 15 read replicas with AAurora.
* **MySQL Replicas** You can currently have 5 read replicas with Aurora MySQL.
* **PostgreSQL**: You can currently have 5 read replicas with Aurora PostgreSQL.

#### Backups with Aurora

___

* Automated backups are always enabled on Amazon Aurora DB Instances. Backups do not impact database performance.
* You can also take snapshots with Aurora. This also does not impact on performance.
* You can share Aurora snapshots with other AWS accounts.

#### Amazon Aurora Serverless

___

* An on-demand, auto-scaling configuration for the MySQL-compatible and PostgreSQL-compatible editions of Amazon Aurora.
  **An Aurora Serverless DB cluster automatically startup, shuts down, and scales capacity up or down based on your
  application's needs**