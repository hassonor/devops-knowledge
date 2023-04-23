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

### **Key Services to Know for the Exam**

1. **Compute**: EC2, Lambda, Elastic Beanstalk
2. **Storage**: S3, EBS, EFS, FSx, Storage Gateway
3. **Databases:** RDS, DynamoDB, Redshift
4. **Networking:** VPCs, Direct Connect, Route 53, API Gateway, AWS Global Accelerator

### Well-Architected Framework Pillars

___

#### Six Pillars of the Well-Architected Framework - Exam Tip!

1. **Operational Excellence**: Running and monitoring systems to deliver business value, and continually improving
   processes and procedures.
2. **Performance Efficiency**: Using IT and computing resources efficiently.
3. **Security**: Protecting information and systems.
4. **Cost Optimization**: Avoiding unnecessary costs.
5. **Reliability**: Ensuring a workload performs its intended function correctly and consistently when it's expected to.
6. **Sustainability**: Minimizing the environmental impacts of running cloud workloads.

### AWS Fundamentals Exam Tips

___

#### 3 Tips for AWS Building Blocks

1. **A Region** is a physical location in the world that consists of two or more Availability Zones (AZs).
2. **An AZ** is one or more discrete data centers - each with redundant power, networking, and connectivity - housed in
   separate facilities.
3. **Edge locations** are endpoints for AWS that are used for caching content. Typically, this consists of CloudFront,
   Amazon's content delivery network (CDN).

* Can you do this yourself in the AWS Management Console?
    * **If yes, you are likely responsible**: Security groups, IAM users, patching EC2 OS, patching databases running on
      EC2, etc.
    * **If not, AWS is likely responsible.**: Management of data centers, security cameras, cabling, patching RDS,
      operating systems, etc.
    * **Encryption is a shared responsibility.**