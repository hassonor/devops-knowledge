#### What is ElastiCache?

___

* ElastiCache is a `managed version` of 2 open-source technologies: `Memcached` and `Redis`. Neither of these tools are
  specific to AWS, but by using ElastiCache you avoid a lot of common issues you might encounter.

#### Memcached vs. Redis

___

* `Memcached`:
    * Simple database caching solution
    * Not a database by itself
    * No failover or Multi-AZ support
    * No backups
* `Redis`:
    * Supported as a caching solution
    * Functions as a standalone database
    * Failover and Multi-AZ support
    * Supports backups

#### DynamoDB Accelerator (DAX)

___

1. `In-Memory Cache`: DAX can reduce DynamoDB response time from milliseconds to microseconds.
2. `Location, Location, Location`: This cache is highly available and lives inside the VPC you specify.
3. `You are in Control`: You determine the node size and count for the cluster, TTL for the data, and maintenance
   windows for changes and updates.

#### What type of cache should you be using?

___

* `DAX`: THis is specific to `DynamoDB` and can only be used when storing data in this service.
* `ELASTICACHE`: ElastiCache gives you a bit more flexibility. It can front just about any database, but really excels
  being places in front of RDS.

#### Exam Tip: Put a Cache on It!

___

* On the exam, favor answers that include a `database caching solution`.
* `You will need to know when each one is applicable`, but there can generally be applied on the test in just about
  every situation.

#### ElastiCache and DAX

___

* `Always Cache`: On the exam, always favor answers that include a database caching solution.
* `Keep It High Level`: The exam won't dive too deeply into any one caching solution.
* `More Than a Cache`: Redis can be more that just a cache - it cache be standalone database as well.