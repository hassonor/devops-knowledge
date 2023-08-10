### Elastic Block Store

___

* `Storage volumes that you can attach your EC2 instances`
* Uses:
    * Use them the same way you would use any system disk.
    * Create a file system.
    * Run a database.
    * Run an operating system.
    * Store data.
    * Install applications.

#### Mission Critical

1. `Production Workloads`: Designed for mission critical workloads.
2. `Highly Avaliable`: Automatically replicated within a single AZ to protect against hardware failures.
3. `Scalable`: Dynamically increase capacity and change the type volume with no downtime or performance impact to your
   live systems.

### EBS Volume Types

___

#### General Purpose SSD (gp2)

3 IOPS per GiB, up to a maximum of 16,000 IOPS per volume. <br>
gp2 volumes smaller than 1 TB can burst up to 3,000 IOPS. <br>
Good for boot volumes of development and test applications which are not latency sensitive.

#### General Purpose SSD (gp3)

* `The latest generation`
* Baseline of 3,000 IOPS for `any volume size` (1GB - 16TB)
* Delivering up to 16,000 IOPS.
* 20% cheaper than gp2.
* Like gp2, they are good for boot volumes or development and test application which are not latency sensitive.

#### Provisioned IOPS SSD (io1)

* Up to 64,000 IOPS per volume. 50 IOPS per GiB.
* Use if you need more than 16,000 IOPS.
* Designed for I/O intensive applications, large databases and latency sensitive workloads.
* `The high perfomace option, and the most expensive`

#### Provisioned IOPS SSD (io2)

* Latest generation
* Higher durability and more IOPS.
* `io2 is the same price as io2`
* 500 IOPS per GiB. Up to 64,000 IOPS.
* 99.999% durability instead of up to 99.9%.
* I/O intensive apps, large databases and latency sensitive workloads. Application which need high levels of durability.

#### Provisioned IOPS SSD io2 Block Express

* `SAN (Storage Area Network) in the cloud. Highest performance, sub-millisecond latency`
* Uses EBS Block Express architecture.
* 4x throughput, IOPS, and capacity of regular io2 volumes.
* Up to 64 TB, 256,000 IOPS per volume.
* 99.999% durability.
* Great for `largest,most critical,high-performance` applications like SAP HANA, Oracle, Microsoft SQL Server and IBM
  DB2.

#### Throughput Optimized HDD (st1)

* `Low-cost HDD volume`
* Baseline throughput of 40 MB/s per TB.
* Ability to burst up to 250 MB/s per TB.
* Maximum throughput of 500 MB/s per volume.
* Frequently-accessed, throughput-intensive workloads.
* Big Data, data warehouses, ETL and log processing.
* A cost effective way to store mountains of data.
* Cannot be a boot volume.

#### Cold HDD (SC1)

* `The Lowest Cost Option`
* Baseline throughput of 12 MB/s per TB.
* Ability to burst up to 80 MB/s per TB.
* Max throughput of 250 MB/s per volume.
* A good choice for colder data requiring fewer scans per day.
* Good for applications that need the lowest cost and performance is not a factor.
* Cannot be a boot volume.

#### IOS Versus Throughput?

* `IOPS`:
    * Measures the number of read and write operations per second.
    * Important metric for quick transactions, low latency apps, transactional workloads.
    * The ability to action reads and writes very quickly.
    * Choose Provisioned IOPS SSD (io1 or io2).
* `Throughput`:
    * Measures the number of bits read of written per second (MB/s).
    * Important metric for large datasets, large I/O sizes, complex queries.
    * The ability to deal with large datasets.
    * Choose Throughput Optimized HDD (st1).