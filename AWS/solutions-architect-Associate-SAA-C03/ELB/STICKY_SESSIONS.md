#### What Are Sticky Sessions?

___

* **Classic Load Balancers** route each request independently to the registered EC2 instance with the smallest load.
* Sticky sessions allow you to bin a user's session to a specific EC2 instance.
* This ensures all requests from user during the session are sent to the same instance.

#### Exam Tip: Application Load Balancers:

___

* You can **enable sticky sessions** for Application Load Balancers as well, but the traffic will be sent at the target
  group level.

#### Exam Tips: Sticky Sessions

___

* **Stick sessions** enable your users to stick to the **same EC2 instance**. Can be useful if you are **storing
  information locally** to that instance.
* You may see a **scenario-based question** where your remove an EC2 instance from a pool, but the load balancer
  **continues to direct traffic** to that EC2 instance.
* To solve a scenario like this, **disable** sticky sessions.