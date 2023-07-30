#### Multiple VPCs

___

* Sometimes you may need to have several VPCs for different environments and it may be necessary to connect these VPCs
  to each other.
    * Production Web VPC
    * Content VPC
    * Intranet

#### VPC Peering

___

* Allows you to connect 1 VPC with another via a direct network route using private IP addresses.
* Instances behave as if they were on the same private network.
* You can peer VPCs with other AWS accounts as well as with other VPCs in the same account.
* Peering is in a start configuration (e.g., 1 central VPC peers with 4 others). No transitive peering!.
* You can peer between regions.

#### Exam Tips: VPC Peering

* **Allows you to connect** 1 VPC with another via a direct network route using private IP addresses.
* **Transitive peering is not supported**. This must always be in a hub-and-spoke model.
* **You can peer between regions**.
* **No overlapping CIDR address ranges**