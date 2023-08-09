#### Security Groups

* Security groups are **virtual firewalls for an EC2 instance.** By default, everything is blocked.
* **TO LET EVERYTHING IN: 0.0.0/0**
* In order to **communicate to your EC2 instances via SSH, RDP, or HTTP**, you will need to
  **open up the correct ports**.

#### Exam Tips: Security Groups

* Security groups are stateful - if you send a request from your instance, the response traffic for that request is
  allowed to flow in regardless of inbound security group rules.
* **Responses to allowed inbound traffic are allowed to flow out, regardless of outbound rules.**