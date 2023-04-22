### 3 Tips for AWS Building Blocks
___

* **A Region** is a physical location in the world that consists of two or more Availability Zones (AZs).
* **An AZ** is one or more discrete data centers - each with redundant power, networking, and
  connectivity - housed in separate facilities.
* **Edge location** are endpoints for AWS that are used for caching content. Typically,
  this consists of CloudFront, Amazon's CDN.

### The Shared Responsibility Model
___

* **Customer** Responsibility for Security **IN** the Cloud:
    * Customer Data
    * Platform, Applications, Identity & Access Management
    * Operating System, Network & Firewall Configuration
    * Client-Side Data Encryption & Data Integrity Authentication
    * Server-Side Encryption (File System and/or Data)
    * Networking Traffic Protection (Encryption, Integrity, Identity)
* **AWS** Responsibility for Security **OF** the Cloud:
    * Software
        * Compute
        * Storage
        * Database
        * Networking
    * HARDWARE/AWS Global INFRASTRUCTURE:
        * Regions
        * Availability Zones
        * Edge Locations

### **Exam Tips**:

**Question**: Can you do this yourself in the AWS Management Console?<br>
**Answer**: 
* **if yes, you are likely responsible**. Security groups, IAM users, patching EC2 O/S,patching databases
running on EC2, etc.
* **if not, AWS is likely responsible**. Management of data centers, security cameras, cabling, patching RDS, O/S,etc.
* **Encryption is a shared responsibility.**