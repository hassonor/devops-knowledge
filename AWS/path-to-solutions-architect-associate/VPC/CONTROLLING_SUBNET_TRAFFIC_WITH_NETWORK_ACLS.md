#### What is a Network ACL? The first line of defence

* A network access control list (ACL) is an optional layer of security for your VPC that acts as a firewall for
  controlling traffic in and out of one or more subnets.
* You might set up network ACLs with rules similar to your security groups in order to add another layer of security to
  your VPC.

#### Overview of Network ACLs

* **Default Network ACLs:** You VPC automatically comes with a default network ACL, and by default it allows all
  outbound and inbound traffic.
* **Custom Network ACLs:** You can create custom network ACLs. By default, each custom network ACL denies all inbound
  and
  outbound traffic until you add rules.
* **Subnet Associations:** Each subnet in your VPC must be associated with a network ACL. If you don't explicitly
  associate a subnet with a network ACL, the subnet is automatically associated with the default network ACL.
* **Block IP Addresses:** Block IP addresses using network ACLs, not security groups.

#### Network ACLs

* You can associate a network ACL with multiple subnets; however, a subnet can be associated with **only 1 network ACL**
  at time. When you associate a network ACL with a subnet, the previous association is **removed**.
* Network ACLs contain a **numbered list of rules** that are evaluated in order, starting with the **lowest** numbered
  rules.
* Network ACLs have **separate** inbound and outbound rules, and each rule can either **allow or deny traffic**.
* Network ACLs are **stateless**; responses to allowed inbound traffic are subject to the rules for outbound traffic (
  and vice versa).

#### Exam Tips: Network ACLs

* **Default Network ACLs:** You VPC automatically comes with a default network ACL, and by default it allows all
  outbound and inbound traffic.
* **Custom Network ACLs:** You can create custom network ACLs. By default, each custom network ACL denies all inbound
  and
  outbound traffic until you add rules.
* **Subnet Associations:** Each subnet in your VPC must be associated with a network ACL. If you don't explicitly
  associate a subnet with a network ACL, the subnet is automatically associated with the default network ACL.
* **Block IP Addresses:** Block IP addresses using network ACLs, not security groups.

* You can associate a network ACL with multiple subnets; however, a subnet can be associated with **only 1 network ACL**
  at time. When you associate a network ACL with a subnet, the previous association is **removed**.
* Network ACLs contain a **numbered list of rules** that are evaluated in order, starting with the **lowest** numbered
  rules.
* Network ACLs have **separate** inbound and outbound rules, and each rule can either **allow or deny traffic**.
* Network ACLs are **stateless**; responses to allowed inbound traffic are subject to the rules for outbound traffic (
  and vice versa).
