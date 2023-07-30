#### Layer 4 Load Balancing

___
A Network Load Balancer function at the fourth layer of the Open Systems Interconnection (OSI) model. It can handle
millions of requests per second.

#### Request Received

___

* After the load balancer receives a connection request, it selects a target from the target group for the default rule.
* **It attempts to open a TCP connection to the selected target on the port specified in the listener configuration**.

#### Listeners

___

* A listener checks for connection requests from clients, using the protocol and port you configure.
* **The listener on a Network Load Balancer then forwards the request to the target group. There are no rules, unlike
  with Application Load Balancers**

#### Target Groups

___

* Each **target group** routes requests to one or more registered targets, such as EC2 instances, using the protocol and
  port number you specify.

#### Ports and Protocols

___

* **Protocols**: TCP, TLS, UDP, TCP_UDP
* **Ports**: 1-65535

#### Encryption

___

* You can use a TLS listener to offload the work of encryption and decryption to your load balancer so your applications
  can focus on their business logic.
* **If the listener protocol is TLS, your must deploy exactly one SSL server certificate on the listener.**

#### Exam Tip: Use Cases

* Network Load Balancers are **best suited for load balancing of TCP traffic** where extreme performance is required.
  Operating at the connection level (Layer 4), Network Load Balancers are capable of handling millions of requests per
  second, while maintaining ultra-low latencies.
* **Use for extreme performance!**

#### Exam Tips: 4 Tips for Network Load Balancers

1. Network Load Balancers operate at Layer 4.
2. Use where you need extreme performance.
3. Other use case are where you need protocols not supported by Application Load Balancers.
4. Network Load Balancers can decrypt traffic, but you will need to install the certificate on the load balancer.