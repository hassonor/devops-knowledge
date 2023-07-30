#### Exam Tips: EC2 Instance Pricing Options

___

* On Demand - **Pay by the hour or the second**, depending on the type of instance you run. Great for flexibility.
* Spot - **Purchase unused capacity at a discount of up to 90%**. Prices fluctuate with supply and demand. Great for
  applications with flexible start and end times.
* Reserved - **Reserved capacity for 1 or 3 years**. Up to 72% discount on the hourly charge. Great if you have known,
  fixed requirements.
* Dedicated - **A Physical EC2 server dedicate for your use**. Great if you have server-bound licenses to reuse of
  compliance requirements.

#### Exam Tips: AWS Command Line Interface

___

* **Least Privilege**: Always give your users the **minimum amount** of access required to do their job.
* **Use Groups**: **Create IAM groups** and assign your users to groups. Group permissions are assigned using IAM policy
  documents. Your users will **automatically inherit** the permissions of the group.

#### Exam Tips: 3 Important AWS CLI Tips

___

1. **Secret Access Key**: You will only see this once! If you lose it, you can delete the access key ID and secret
   access key and regenerate them. You will need to run **aws configure** again.
2. **Don't Share Key Pairs**: Each developer should have their own access key ID and secret access key. Just like
   passwords, they should not be shared.
3. **Supports Linux, Windows and macOS**: You can install the CLI on your MAC, Linux or Windows PC. You can also use it
   on EC2 instances.

#### Exam Tips: Tips to Remember When Using Roles

___

1. **The Preferred Option**: Roles are preferred from a security perspective.
2. **Avoid Hard Coding Your Credentials**: Roles allow you to provide access without the use of access key IDs and
   secret access keys.
3. **Policies**: Policies control a role's permissions.
4. **Updates**: You can update a policy attached to a role, and it will take immediate effect.
5. **Attaching and Detaching**: You can attach and detach roles to running EC2 instances without having to stop or
   terminate these instances.

#### Exam Tips: Security Groups

___

* **Tip 1**: Changes to security groups take effect immediately.
* **Tip 2**: You can have any number of EC2 instances within a security group.
* **Tip 3**: You can have multiple security groups attached to EC2 instances.
* **Tip 4**: All inbound traffic is blocked by default.
* **Tip 5**: All outbound traffic is allowed.

### STUDY TIP

___

#### Bootstrap Scripts

* A bootstrap script is a **script that runs when the instance first runs**. It passes user data to the EC2 instance
  and can be used to install application (like web servers and databases), as well as do updated and more.

#### Exam Tips: Metadata and UserData

___

1. **User Data**:
    * **User data** are simply bootstrap scripts.
2. **Metadata**:
    * **Metadata** is data about your EC2 instances
    * You can use bootstrap scripts (user data) to access **metadata**

#### Exam Tips: Networking with EC2

___

1. **ENI**: For basic networking. Perhaps you need a separate management network from your production network or a
   separate logging network, and you need to do this at a low cost. In this scenario, use multiple ENIs for each
   network.
2. **Enhanced Networking**: For when you need speeds between 10 Gbps and 100 Gbps. Anywhere you need reliable, high
   throughput.
3. **EFA**: For when you need to accelerate High Performance Computing (HPC) and machine learning applications or if you
   need to do an OS-bypass. If you see a scenario question mentioning HPC or ML and asking what network adapter you
   want,
   choose EFA.

#### Exam Tips: Optimizing with EC2 Placement Groups

___

1. **Cluster Placement Groups**: Low network latency, high network throughput
2. **Spread Placement Groups**: Individual critical EC2 instances
3. **Partition Placement Groups**: Multiple EC2 instances; HDFS, HBase, and Cassandra

#### REMEMBER THESE TIPS FOR THE EXAM:

___

* A **cluster placement group** can't span multiple Availability Zones, whereas a spread placement group and partition
  placement group can.
* Only **certain types of instances** can be launched in a placement group (compute optimized, GPU, memory optimized,
  storage optimized).
* **AWS recommends homogenous instances** within cluster placement groups.
* **You can't merge placement groups**
* You can **move an existing instance into a placement group**. Before you move the instance, the instance must be in
  the stopped state. You can move or remove an instance using the AWS CLI or an AWS SDK, but you can't do it via the
  console yet.

#### STUDY TIP: DEDICATED HOSTS - Any question that talks about special licensing requirements.

___

* An **Amazon EC2 Dedicated Host** is a **physical server** with EC2 instance capacity fully dedicated to your use.
  Dedicated Hosts allow you to use your **existing** per-socket, per-core, or per-VM **software licenses**, including
  Windows Server, Microsoft SQL Server, and SUSE Linux Enterprise Server.

#### Exam Tips: Timing Workloads with Spot Instances and Spot Fleets

___

* Spot instances save up to **90%** of the cost of On-Demand Instances.
* You can block Spot Instances from terminating by using **Spot block**.
* Useful for any type of computing where you **don't need persistent storage**.
* A Spot Fleet is a **collection of Spot Instances**  and, optionally, On-Demand Instances.

#### Exam Tip: You can deploy vCenter on the AWS Cloud using VMware.

___

* Perfect solution for extending your private VMWare Cloud into the AWS public cloud.

#### Exam Tips: AWS Outposts

___

* Scenario about extending AWS to your data center? **Think AWS Outposts**.
    * AWS Outposts rack for **large deployments**
    * AWS Outposts servers for **smaller deployments**