#### Exam Tips: VPCs

___

* Think of a VPC as a logical data center in AWS.
* Consists of Internet gateways (or virtual private gateways), rout tables, network access control lists, subnets and
  security groups.
* 1 subnet is always in 1 Availability Zone.

#### 5 Exam Tips for NAT Gateways

___

1. Redundant inside the Availability Zone
2. Starts at 5 Gbps scales currently to 45 Gbps
3. No need to patch
4. Not associated with security groups
5. Automatically assigned a public IP address

#### EXAM TIP: NAT Gateways

* **High Availability with NAT Gateways**: If you have resources in multiple Availability Zones, and they share a NAT
  gateway, in the event the NAT gateway's Availability Zone is down, resources in the other Availability Zones lost
  internet access.
    * To create an Availability Zone-independent architecture, create a NAT gateway in each Availability Zone and
      configure your routing to ensure resources use the NAT gateway in the same Availability Zone.

#### Exam Tip: Security Groups

___

* Security groups are stateful - if you send a request from your instance, the response traffic for that request is
  allowed to flow in regardless of inbound security group rules.
* Responses to allowed inbound traffic are allowed to flow out, regardless of outbound rules.

#### Exam Tips: Network ACLs

___

* **Default Network ACLs:** Your VPC automatically comes with a default network ACL, and by default it allows all
  outbound and inbound traffic.
* **Custom Network ACLs:** You can create custom network ACLs. By default, each custom network ACL denies all inbound
  and outbound traffic until you add rules.
* **Subnet Associations:** Each subnet in your VPC must be associated with a network ACL. If you don't explicitly
  associate a subnet with a network ACL, the subnet is automatically associated with the default network ACL.
* **Block IP Addresses:** Block IP addresses using network ACLs, not security groups.
* You can associate a network ACL with multiple subnets; however, a subnet can be associated with **only 1 network ACL**
  at a time. WHen you associate a network ACL with a subnet, the previous association is **removed**.
* Network ACLs contain a **numbered list of rules** that are evaluated in order, starting with the **lowest** numbered
  rule.
* Network ACLs have **separate** inbound and outbound rules, and each rule can either **allow or deny traffic**.
* Network ACLs are **stateless**; responses to allowed inbound traffic are subject to the rules for outbound traffic (
  and vice versa).

#### Exam Tips: Direct Connect

___

* Direct Connect directly connects your data center to AWS
* Useful for high-throughput workloads (e.g: lots of network traffic)
* Helpful when you need a stable and reliable secure connection

#### VPC Endpoints

___

* **Use Case**: When you want to connect AWS services without leaving the Amazon internal network
* **2 Types of VPC Endpoints**: Interface endpoints and gateway endpoints
* **Gateway Endpoints**: Supports S3 and DynamoDB

#### VPC Peering

___

* Allows you to connect 1 VPC with another via a direct network route using private IP addresses.
* Instances behave as if they were on the same private network.
* You can peer VPCs with other AWS accounts as well as with other VPCs in the same account.
* Peering is in a star configuration (e.g., 1 central VPC peers with 4 other). No transitive peering.
* You can peer between regions.

#### AWS PrivateLink

___

* If you see a question asking about peering VPCs to tens, hundreds or thousands of customer VPCs, think of AWS
  PrivateLink.
* Doesn't require VPC peering; no route tables, NAT gateways, internet gateways, etc.
* Requires a Network Load Balancer on the service VPC and an ENI on the customer VPC.

#### AWS Transit Gateway

___

* You can use route tables to limit how VPCs talk to one another.
* Works with Direct Connect as well as VPN connections.
* Supports IP multicast (not supported by any other AWS service).