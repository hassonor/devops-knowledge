#### What is Deregistration Delay?

___

* Deregistration Delay allows Load Balancers to keep existing connections open if the EC2 instances are de-registered of
  become unhealthy.
* This enables the load balancer to complete in-flight requests make to instances that are de-registering or unhealthy.
* You can disable deregistration delay if you want your load balancer to immediately close connections to the instances
  that are de-registering or have become unhealthy.

#### Exam Tips: Deregistration Delay:

___

* **Enable deregistration delay**: Keep existing connections open if the EC2 instance becomes unhealthy.
* **Disable Enable deregistration delay**: Do this if you want your load balancer to immediately close connections to
  the instances that are de-registering or have become unhealthy.