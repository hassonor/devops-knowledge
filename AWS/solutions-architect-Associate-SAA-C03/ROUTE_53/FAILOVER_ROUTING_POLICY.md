#### Failover Routing Policy - Exam Tip:

___
Failover routing policies cater to configurations that demand an active/passive setup. A typical use case might involve
designating `eu-west-2` as the primary site and `ap-southeast-2` as the secondary Disaster Recovery (DR) site. Notably,
Route53 is tasked with monitoring the primary site's health through consistent health checks.
