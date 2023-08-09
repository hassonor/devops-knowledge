#### Remember the Different ELB Types

___

1. **Application Load Balancers** (Layer 7)
2. **Network Load Balancers** (Layer 4)
3. **Classic Load Balancers** (Layer 4/7)

#### Health Checks

___

* You can use health checks **to route your traffic to instances or targets that are healthy**.

#### Application Load Balancers Exam Tips

___

* **Listeners**: A listener checks for connection requests from clients using the protocol and port you configure.
* **Rules**: Determine how the load balancer routes requests to its registered targets. Each rule consists a priority,
  one or more actions, and one or more conditions.
* **Target Groups**: Each target group routes requests to one or more registered targets, such as EC2 instances, using
  the protocol and port number you specify.
* **Limitations**: Application Load Balancers only support HTTP and HTTPS.
* ***HTTPS**: To use an HTTPS listener, you must deploy at least one SSL/TLS server certificate on your load balancer.
  The load balancer uses a server certificate to terminate the frontend connection and then decrypt requests from
  clients before sending them to the targets.

#### 4 Tips for Network Load Balancers:

___

1. Network Load Balancers operate at Layer 4.
2. Use where you need extreme performance.
3. Other use cases are where you need protocols not supported by Application Load Balancers.
4. Network Load Balancers can decrypt traffic, but you need to install the certificate on the load balancer.

#### Classic Load Balancers:

___

* **504 error means the gateway has timeout**: This means the application is not responding within the idle timeout
  period.
* **Troubleshoot the application**: Is it the web server or database server?
* **Need the IPv4 address of your end user?**: Look for the `X-Forwarded-For` header.

#### Sticky Sessions:

___

* **Sticky sessions** enable your users to stick to the **same EC2 instance**. Can be useful if you are **storing
  information locally** to that instance.
* You may see a **scenario-based question** where you remove an EC2 instance from a pool, but the load balancer *
  *continues to direct traffic** to that EC2 instance.
* To solve a scenario like this, **disable** sticky sessions.

#### Exam Tip: Application Load Balancers

___

* **You can** enable sticky session **for Application Load Balancers as well, but the traffic will be send at the target
  group level**.

#### Deregistration Delay/Connection Draining:

___

* **Enable Deregistration Delay**: Keep existing connection open if the EC2 instance becomes unhealthy.
* **Disable Deregistration Delay**: Do this if you want your load balancer to immediately close connections to the
  instances that are de-registering or have become unhealthy.