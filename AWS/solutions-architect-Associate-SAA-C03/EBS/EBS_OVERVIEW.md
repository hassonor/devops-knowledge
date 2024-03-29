### Exam Tips: Learning EBS: SSD Volumes

___

#### Highly available and scalable storage volumes you can attach to an EC2 instance.

* **gp2 - General Purpose SSD**:
    * Suitable for boot disks and general applications.
    * Up to 16,0000 IOPS per volume
    * Up to 99.9% durability
* **gp3 - General Purpose SSD**:
    * Suitable for high performance applications.
    * Predictable 3,000 IOPS baseline performance and 125 MiB/s regardless of volume size.
    * Up to 99.9% durability.
* **io1 - Provisioned IOPS SSD**:
    * Suitable for OLTP and latency-sensitive applications.
    * 50 IOPS/GiB
    * Up to 64,000 IOPS per volume
    * High performance and most expensive
    * Up to 99.9% durability
* **io2 - Provisioned IOPS SSD**:
    * Suitable for OLTP and latency-sensitive applications.
    * 500 IOPS/GiB
    * Up to 64,000 IOPS per volume
    * 99.999% durability
    * Latest generation Provisioned IOPS volume

#### EBS: HDD Volumes: Highly available and scalable storage volumes you can attach to an EC2 instance.

* **st1 - Throughput Optimized HDD**:
    * Suitable for big data, data warehoused and ETL
    * Max throughput is 500 MB/s per volume
    * Cannot be a boot volume
    * Up to 99.9% durability
* **sc2 - Cold HDD**:
    * Max throughput of 250 MB/s per volume
    * Less frequently accessed data
    * Cannot be a boot volume
    * Lowest cost
    * Up to 99.9% durability
