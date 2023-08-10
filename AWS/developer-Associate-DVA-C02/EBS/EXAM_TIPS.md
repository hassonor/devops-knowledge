#### Elastic Block Store: SSD Volumes

___

* `Highly available and scalable storage`
* `volumes you can attach to an EC2 instance`
* `gp2`: (General Purpose SSD)
    * Suitable for **boot disks** and **general applications**.
    * 3 IOPS per GiB.
    * Up to **16,000 IOPS** per volume.
    * Up to 99.9% durability.
* `gp3`: (Latest Generation General Purpose SSD) -> 20% cheaper than gp2
    * Suitable for **boot disks** and **general applications**.
    * Baseline of 3,000 IOS for all volumes.
    * Up to **16,000 IOPS** per volume.
    * Up to 99.9% durability.
* `io1`: (Provisioned IOPS SSD)
    * Suitable for **OLTP** and **latency-sensitive** applications.
    * 50 IOPS/GiB.
    * Up to **64,000 IOPS** per volume.
    * High performance and most expensive.
    * Up to 88.8% durability.
* `io2`: (Latest Generation Provisioned IOPS SSD)
    * Suitable for **OLTP** and **latency-sensitive** applications.
    * 500 IOS/GiB
    * Up to **64,000 IOPS**  per volume.
    * 99.999% durability.
* `io2 Block Express`: (Provisioned IOPS SSD)
    * For the **largest, most critical, high-performance** applications: SAP HANA, Oracle, Microsoft SQL Server and IBM
      DB2.
    * Up to 64 TB, **256,000 IOPS** per volume.
    * 99.999% durability.

#### Elastic Block Store: HDD Volumes

___

* `st1` (Throughput Optimized HDD)
    * Suitable for Big Data, data warehouses, ETL.
    * Max throughput is 500 MB/s per volume.
    * Cannot be a boot volume.
    * Up to 99.9% durability.
* `sc1` (Cold HDD)
    * Max throughput of 250 MB/s per volume.
    * Less-frequently-accessed data.
    * Cannot be a boot volume.
    * Lowest cost.
    * Up to 99.9% durability.

#### EBS Volumes

___

1. `Default Encryption`: If encryption by default is set on your account by your account admin, you cannot create
   encrypted EBS volumes.
2. `Encrypted Snapshots`: If you can create an EBS volume from an encrypted snapshot, then you will get an encrypted
   volume.
3. `Unencrypted Snapshots`: If you create an EBS volume from an encrypted snapshot, then encryption is only optional if
   default encryption has not been set at account level by your account admin.