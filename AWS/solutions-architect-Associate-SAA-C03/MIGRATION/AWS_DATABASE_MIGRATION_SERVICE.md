#### What is DMS?

___

* `Migration Tool`: It allows for easy migration of relational databases, data warehouses, NoSQL databases and other
  data stores.
* `Cloud or On-Premises`: Migrate data between AWS and on-premise either into or out of AWS.
* `One-Time or Ongoing`: You have the option to perform a one-time migration or continuously replicate ongoing changes.
* `Conversion Tools`: The `SCT` allows for translating database schemas to new platforms.
* `AWS Benefits`: Since it is a cloud service, you gain the advantages of AWS: cost efficiency, security and more.

#### How It Works?

___

1. DMS is a `server running replication software`.
2. Create `source and target connections` for loading from and to.
3. `Schedule tasks` to run on the DMS server to move data.
4. AWS `created the tables and primary keys` (if they do not exist on the target).
5. Optionally, `create` your `target tables beforehand` if desired.
6. `Leverage the SCT` for creating some or all of your tables, indexes and more.
7. Source and target data stores are referred to as `endpoints`.

#### DMS: Important Concepts

___

* `Same Engine`: Easily migrate between source and target endpoints with the `same engine type`. Example: MySQL to MySQL
* `Different Engines`: Also migrate between source and target endpoints with `different engines`. Example: Oracle to
  PostgreSQL
* `Must Know!`: You `must have ONE endpoint live within an AWS service`. It cannot be used exclusively outside of AWS.

#### AWS Schema Conversion Tool (SCT)

___

* `Convert`: Leverage the SCT to convert existing database schemas from one engine to another.
* `Engine Types`: Convert many types of relational databases, including both OLAP and OLTP. It even supports data
  warehouses.
* `Supported Targets`: Converted schemas can be used for any supported Amazon RDS engine type, Amazon Aurora, or Amazon
  Redshift.
* `Amazon EC2 and Amazon S3`: You can even use the converted schemas with databases running on EC2 or data stored in S3.

#### Migration Types to Know:

___

* `Full Load`: All existing data is moved from sources to targets in parallel.
* `Full Load and Change Data Capture (CDC)`: Full load plus CDC captures changes to source tables during migration.
    * CDC `guarantees transactional integrity` of the target database!
* `CDC Only`: Only replicate the data changes from the source database.

#### Migrating Large Data Stores via AWS Snowball

___

1. `Terabytes`: Some data migrations can include `terabytes` of information.
2. `Bandwidth Throttles`: Large migrations can take up bandwidth and cause `network throttles`.
3. `Snowball Edge`: Leverage certain Snowball Edge devices and S3 with DMS to migrate large data sets quickly.
4. `SCT`: You can still leverage the SCT to extract data into Snowball devices and then into S3.
5. `Load Converted Data`: DMS can still load the extracted data from S3 and migrate to the chosen destination.
6. `CDC Compatible`: Still able to leverage CDC for capturing changes when extracting data to store in S3.

#### Exam Tips: AWS DMS

___

* `Easy Database Migrations`: It allows for easy migration of relational databases, NoSQL databases, data warehouses,
  and other data stores to AWS.
* `How It Works`: DMS server runs replication software that executes specified tasks.
* `Migrations`: Know the difference between full-load, full load with CDC and CDC-only migrations.
* `Must Include AWS!`: One of the endpoints `must` be within AWS. You cannot leverage this for external-only migrations.
* `SCT`: SCT allows you to convert database schemas to a new or different target database schema.
* `Snowball`: You can migrate massive databases to AWS more efficiently by using Snowball devices with DMS.