### Elastic Load Balancer
___
* `Application Load Balancer`: HTTP and HTTPS 
* `Network Load Balancer`: TCP and high performance
* `Classic Load Balancer`: HTTP/HTTPS and TCP (Legacy)

#### Gateway Load Balancer
Allows you to load balance workloads for third-party virtual appliances running in AWS, such as:
* Virtual appliances purchased using the AWS Marketplace
* Virtual firewalls from companies like Fortinet, Palo Alto, Juniper, Cisco
* IDS/IPS systems from companies like CheckPoint, Trend Micro, etc.

#### Application Load Balancer
___
* Used for load balancing HTTP/HTTPS traffic. They operate at Layer 7 and are application-aware.
* They support advanced request routing to specific web servers based on the HTTP header.

#### 7 Layer Model
What is it?<br>
A conceptual framework which describes the function of a network. <br>
Beginning with the application layer, which directly servers the end user, down to the physical layer.
* `Layer  7 - Application`: What the end user sees, HTTP, web browsers.
* `Layer  6 - Presentation`: Data is in a usable format. Encryption, SSH.
* `Layer  5 - Session`: Maintains connections and sessions.
* `Layer  4 - Transport`: Transmits data using TCP and UDP.
* `Layer  3 - Network`: Logically routes packets, based on IP address.
* `Layer  2 - Data Link`: Physically transmits data based on Mac addresses.
* `Layer  1 - Physical`: Transmits bits and bytes over physical devices.

#### Network Load Balancer
___
* User for load balancing TCP traffic where extreme performance is required. 
* Operating at Layer 4 (Transport Layer).
* Capable of handing millions of requests per second while maintaining ultra-low latencies.
* As it is high performance, it is also the most expensive option.

#### Classic Load Balancers
___
1. `Legacy`: Classic Load Balancers are the legacy option but may still appear in the exam.
2. `HTTP / HTTPS`: Support Layer 7-specific features, such as `X-Forwarded-For` headers and sticky sessions.
3. `TCP`: Support Layer 4 load balancing for applications that rely purely on the TCP protocol.

#### Common Load Balancers Errors
___
`Error 504 Gateway Timeout`: The target failed to respond.
* `Check Your Application`:
  * The Elastic Load Balancer could not establish a connection to the target, e.g., the web server, database, or Lambda function.
  * Your application is having issues.
  * Identify where the application is falling and fix the problem.