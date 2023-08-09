#### Cluster Placement Groups

___
**Grouping of instances withing a single Availability Zone.** Recommended for applications that need low network
latency, high network throughput, or both.

#### Spread Placement Groups

___
A spread placement group is a group of instances that are **each placed on distinct underlying hardware**.
<br><br>
Spread placement groups are recommended for applications that have a small number of critical instances that should be
kept separate from each other.

* **Study Tip**: **Scenario Questions** - Used for individual Instances

#### Partition Placement Groups

___
Each partition placement group has its own set of racks. Each rack has its own network and power source. No two
partitions within a placement group share the same racks, allowing you to isolate the impact of hardware failure within
your application.<br><br>
**EC2 DIVIDES EACH GROUP INTO LOGICAL SEGMENTS CALLED PARTITIONS.**

* **Study Tip**: **Scenario Questions** - Used for Multiple Instances

### Exam Tips

___

* **3 Types of Placement Groups**
    1. **Cluster Placement Groups**: Low network latency, high network throughput.
    2. **Spread Placement Groups**: Individual critical EC2 instances
    3. **Partition Placement Groups**: Multiple EC2 instances; HDFS, HBase, and Cassandra
* A **cluster placement group** can't span multiple Availability Zones, whereas a spread placement group and partition
  placement group can.
* Only **certain types of instances** can be launched in a placement group (compute optimized, GPU, memory optimized,
  storage optimized).
* **AWS recommends homogenous instances** within cluster placement groups.
* **You can't merge placement groups**
* You can **move an existing instance into a placement group**. Before you move the instance, the instance must be in
  the stopped state. You can move or remove an instance using the AWS CLI or an AWS SDK, but ou can't do it via the
  console yet.