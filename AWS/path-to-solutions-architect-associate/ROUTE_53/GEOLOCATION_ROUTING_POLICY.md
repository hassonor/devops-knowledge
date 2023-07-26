#### Geolocation Routing Policy

___
Geolocation routing lets you **choose where your traffic will be sent** based on the geographic location of your users (
i.e., the location from which DNS queries originate).

#### Use Cases

___
For example, you might want all queries from Europe to be routed to a fleet of EC2 instances that are specifically
configured for your European customers.

#### Exam Tips: Geolocation Routing Policy

* Route 53 will send the European customers to `eu-west-1` and the US customers to `us-east-1`.
