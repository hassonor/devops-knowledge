#### Sharing Applications across VPCs

___

* To open our applications up to other VPCs, we can either:
    * **Open the VPC up to the Internet**
        * Security consideration; everything in the public subnet is public
        * A lot more to manage
    * **Use VPC Peering**
        * You will have to create and manage many diff peering relationships.
        * The whole network will be accessible. This isn't good if you have multiple applications within your VPC.

#### Using PrivateLink

___

* The best way to expose a service VPC to tens, hundreds, or thousands of customer VPCs.
* Doesn't require VPC peering; no route tables, NAT gateways, internet gateways, etc.
* Requires a Network Load Balancer on the service VPC and an ENI on the customer VPC.

#### Exam Tips: AWS PrivateLink

___

* If you see a question asking about peering VPCs to tens, hundreds, or thousands of customer VPCs, think of AWS
  PrivateLink.
* Doesn't require VPC peering; no route tables, NAT gateways, internet gateways, etc.
* Requires a Network Load Balancer on the service VPC and an ENI on the customer VPC.