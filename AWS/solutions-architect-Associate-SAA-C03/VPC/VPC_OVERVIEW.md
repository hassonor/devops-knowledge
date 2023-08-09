#### What can we do with a VPC?

* **Launch Instances**: Launch instances into a subnet of your choosing.
* **Custom IP Addresses**: Assign custom IP address ranges in each subnet.
* **Route Tables**: Configure route tables between subnets.
* **Internet Gateway**: Create internet gateway and attach it to our VPC.
* **More Control**: Much better security control over your AWS resources.
* **Access Control Lists**: Subnet network access control lists.
* **BONUS TIP**: You can use network access control list (**NACLs**) to block specific IP addresses.

#### Default VPC vs. Custom VPC

* **Default**:
    * Default VPC is user friendly
    * All subnets in default VPC have a route out to the internet.
    * Each EC2 instance has both a public and private IP address.
* **Custom**:
    * Fully customizable
    * Takes time to set up

#### VPC: Exam Tips

* Think of a VPC as a logical data center in AWS.
* Consists of internet gateways (or virtual private gateways), route tables, network access control lists, subnets and
  security groups.
* 1 subnet is always in 1 Availability Zone.