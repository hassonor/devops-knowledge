#### 4 Questions to Ask in the Exam

___

1. Is it highly available?
2. Which is appropriate for the situation: horizontal or vertical.
3. Is cost-effective?
4. Would switching databases fix the problem?

#### Auto Scaling: What to Know for the Exam:

* `Auto Scaling is only for EC2`: No other service can be scaled using Auto Scaling. Other services might have a
  built-in option, but they aren't included in Auto Scaling groups.
* `Get ahead of the workload`: Whenever possible, favor solutions that are predictive rather than reactive.
* `Bake AMIs to reduce build times`: You can avoid long provisioning times by putting everything in an AMI. This is
  better than using user data whenever possible.
* `Spread out`: Make sure you are spreading your Auto Scaling groups over multiple Availability Zones.
* `Steady state groups`: allows us to create a situation where the failure of a legacy codebase or resource that can't
  be scaled can automatically recover from failure.
* `ELBs are essential`: Make sure you enable health checks from load balancers - otherwise, instances won't be
  terminated and replaced when they fail health checks.

#### Scaling Databases:

* `RDS` has the most database scaling options.
* `Horizontal scaling` is usually preferred over vertical.
* `Read replicas` are your friend.
* `DynamoDB scaling`: comes down to access patterns.