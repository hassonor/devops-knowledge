#### What is Elastic Load Balancing?

___

* Elastic Load Balancing automatically distributes incoming application traffic across incoming application traffic
  across multiple targets, such as Amazon EC2 instances. This can be done across multiple AZs.

#### 3 Different Types of Load Balancers

___

* **Application Load Balancer**: Best suited for load balancing of HTTP and HTTPS traffic. They operate at Layer 7 and
  are application-aware. Intelligent Load Balancer.
* **Network Load Balancer**: Operating at the connection level (Layer 4), Network Load Balancers are capable of
  handling millions of requests per second, while maintaining ultra-low latencies. Performance Load Balancer.
* **Classic Load Balancer**: Legacy load balancers. You can load balance HTTP/HTTPS applications and use Layer
  7-specific features, such as X-Forwarded and sticky sessions. Classic/Test/Dev Load Balancer.

#### Health Checks

___

* All AWS load balancers can be configured with health checks. Health checks periodically send requests to load
  balancers` registered instance to test their status.
* The status of the instances that are healthy at the time of the health check is `InService`.
* The status of any instances that are unhealthy at the time of the health checks is `OutOfService` The load balancer
  performs health checks on all registered instances, whether the instance is in a healthy state or an unhealthy state.
* The **load balancer** routes requests only to the healthy instances. When the load balancer determines an instance is
  unhealthy, it stops routing requests to that instance.

#### Exam Tips: ELB Overview

___

* **Remember the Different ELB Types**:
    * Application Load Balancers
    * Network Load Balancers
    * Classic Load Balancers
* **Health Checks**
    * You can use **health checks** to route your traffic to instances or targets that are healthy.