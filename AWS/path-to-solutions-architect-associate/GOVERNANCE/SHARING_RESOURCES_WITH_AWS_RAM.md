#### What is AWS RAM?

___
AWS Resource Access Manager (RAM) is a free service that allows you to `share` AWS resources with `other accounts` and
within your `organization`. AWS RAM allows you to easily share resources rather that having to create duplicate copies
in your different accounts.

#### What Can Be Shared Using AWS RAM?

___

* Transit gateways
* License Manager
* Dedicated Hosts
* VPC subnets
* Route 53 Resolver
* And many more...

#### Exam Tip: RAM vs. VPC Peering

___

* When should you use `VPC peering` or `RAM`?
* Are you sharing resources within the same region? `Use RAM`.
* Are you sharing across regions? `Use VPC peeering`.
* `If RAM isn't available and VPC peering is, that's still a great option!`

#### Exam Tips: AWS RAM

___

* `Sharing`: Sharing resources means you don't have to duplicate them.
* `Paying`: RAM is free, but the user creating the architecture pays.
* `VPC Peering`: VPC peering excels when you are connecting 2 separate networks.
* `Organizations`: RAM easily allows organizations to share architecture.
