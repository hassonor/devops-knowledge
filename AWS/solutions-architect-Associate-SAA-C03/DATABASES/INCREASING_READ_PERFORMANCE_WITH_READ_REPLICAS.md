### Exam Tips: Increasing read performance with read replicas

___

#### Multi-AZ

* An exact copy of your production database in another Availability Zone.
* Used for disaster recovery.
* In the event of a failure, RDS will automatically fail over to the standby instance.

#### Read Replica

* A read-only copy of your primary database in the same AZ, cross-AZ, or cross-origin.
* Used to increase or scale read performance.
* Great for read-heavy workloads and takes the load off your primary database for read-only workloads (E.g: Business
  Intelligence reporting jobs).