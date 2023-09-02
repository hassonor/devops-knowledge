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
    * Great for read-heavy workloads and takes the load off your primary database for read-only workloads, e.g.,
      Business Intelligence reporting jobs.