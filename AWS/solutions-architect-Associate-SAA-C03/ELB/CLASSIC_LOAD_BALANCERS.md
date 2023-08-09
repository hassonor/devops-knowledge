#### Classic Load Balancers

___
Classic Load Balancers are the legacy load balancers. You can load balance HTTP/HTTPS applications and use Layer
7-specific features, such as X-Forwarded and sticky sessions. You can also use strict Layer 4 load balancing for
applications that rely purely on the TCP protocol.

#### X-Forwarded-For

___

* When traffic is sent from a load balancer, the server access logs contain the IP address of the proxy or load balancer
  only.
* **To see the original IP address of the client, the** X-Forwarded-For **request header is used**.

#### Gateway Timeouts

___

* If your application stops responding, the Classic Load Balancer responds with a 504 error.
* This means the application is having issues. This could be either at the web server layer of database layer.

#### Exam Tips: Classic Load Balancer

___

* **A 504 error means the gateway has timed out**: This means the application is not responding withing the idle timeout
  period.
* **Troubleshoot the application**: It is the web server or database server?
* **Need the IPv4 address of your end user**: Look for the `X-Forwarded-For` header.