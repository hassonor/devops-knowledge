#### VPC Endpoints

___

* A VPC endpoint enables you to privately connect your VPC to supported AWS services and VPC endpoint services powered
  by PrivateLink without requiring an internet gateway, NAT device, VPN connection, or AWS Direct Connect connection.
* **Instances in your VPC do not require public IP addresses to communicate with resources in the service.**
* Traffic between your VPC and the other service, does not leave the Amazon network.

#### Study Tip: Endpoints Are Virtual Devices

* They are horizontally scaled, redundant, and highly available VPC components that allow communication between
  instances in your VPC and services **without imposing availability risks or bandwidth constraints on your network
  traffic**.

#### There are 2 types of endpoints

1. **Option 1: INTERFACE ENDPOINTS**:
    * An interface endpoint is an **elastic network interface with a private IP address** that serves as an entry point
      fot traffic headed to a supported service. They support a large number of AWS services.
2. **Option 2: GATEWAY ENDPOINTS**:
    * Similar to NAT gateways, a gateway endpoint is a **virtual device you provision.** It supports connection to S3
      and DynamoDB.

#### Exam Tips: VPC Endpoints

* **Use Case:** When you want to connect AWS services without leaving the Amazon internal network
* **2 Types of VPC Endpoints:** Interface endpoints and gateway endpoints.
* **Gateway Endpoints**: Support S3 and DynamoDB