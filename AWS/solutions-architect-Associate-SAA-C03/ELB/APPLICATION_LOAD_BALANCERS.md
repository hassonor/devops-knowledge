#### Layer 7 Load Balancing

___
An Application Load Balancer functions at the Application Layer -- the seventh layer of the Open System
Interconnection (OSI) model. After the load balancer receives a request, it evaluates the listener rules in priority
order to determine which rules to apply, and then selects a target from the target group for the rule action.

#### Listeners

___

* A listener checks for connection requests from clients, using the protocol and port you configure.
* You define rules that determine how the load balancer routes requests to its registered targets.
* Each rule consists of a priority, one or more actions, and one or more conditions.

#### Rules

___
When the condition for a rule are met, then its actions are performed. You must define a default rule for each listener,
and you can **optionally define additional rules**.

#### Target Groups

___
Each **target group** routes requests to one or more registered targets, such as EC2 instances, using the protocol and
port number you specify.

#### Exam Tip: Limitations of Application Load Balancers

___
Application Load Balancers only support **HTTP** and **HTTPS**.

#### HTTPS Load Balancing

___
To use an HTTPS listener, you must deploy at least one SSL/TLS server certificate on your load balancer. The load
balancer uses a server certificate to terminate the frontend connection and then decrypt requests from clients before
sending them to the targets.

#### Exam Tips: Application Load Balancers

___

* **Listeners**: A listener checks for connection requests from clients, using the protocol and port you configure.
* **Rules**: Determine how the load balancer routes requests to its registered targets. Each rule consists of a
  priority, one or more actions, and one or more conditions.
* **Target Groups**: Each target group routes requests to one or more registered targets, such as EC2 instances, using
  the protocol and port number you specify.
* **Limitations**: Application Load Balancers only support HTTP and HTTPS.
* **HTTPS**: To use an HTTPS listener, you must deploy at least one SSL/TLS server certificate on your load balancer.
  The load balancer uses a server certificate to terminate the frontend connection and then decrypt requests from
  clients before sending them to the targets.