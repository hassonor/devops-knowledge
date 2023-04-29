### EC2 Overview

___

#### Introducing EC2

1. **Game Changer**: AWS let a big change in the industry by introducing EC2.
2. **Pay Only for What You Use**: EC2 changed the economics of computing.
3. **No Wasted Capacity**: Select the capacity you need right now. Grow and shrink when you need.

### EC2 Pricing Options

___

1. **On-Demand**: Pay by the hour or the second, depending on the type of instance you run.
2. **Reserved**: Reserved capacity for 1 or 3 years. Up to 72% discount on the hourly charge.
3. **Spot**: Purchase unused capacity at a discount of up to 90%. Prices fluctuate with supply and demand.
4. **Dedicated**: A physical EC2 server dedicated for your use. The mose expensive option.

### On-Demand Instances

___

1. **Flexible**: Low cost and flexibility of Amazon EC2 without any upfront payment or long-term commitment.
2. **Short-Term**: Applications with short-term, spiky, or unpredictable workloads that cannot be interrupted.
3. **Testing the Water**: Application being developed or tested on Amazon EC2 for the first time.

### Reserved Instances

___

1. **Predictable Usage**: Application with steady state or predictable usage.
2. **Specific Capacity Requirements**: Applications that require reserved capacity.
3. **Pay up Front**: You can make upfront payments to reduce the total computing costs even further.
4. **Standard Rls**: Up to 72% off the on-demand price.
5. **Convertible Rls**: Up to 54% off the on-demand price. Has the option to change to different Rl type of equal or
   greater value.
6. **Scheduled Rls**: Launch within the time window you define. Match your capacity reservation to a predictable
   recurring schedule that only requires a fraction of a day, week or month.

* Reserved instances operate at a **regional level**

#### Savings Plans with Reserved Instances

1. **Save up to 72%**: All AWS compute usage, regardless of instance type or Region.
2. **Commit to 1 or 3 Years**: Commit to use a specific amount of compute power (measured by the hour) for a 1-year or
   3-year period.
3. **Super Flexible**: Not only EC2, this also includes serverless technologies like Lambda and Fargate.

### Spot Instances

___

#### When to Use Spot Instances?

* Application that have flexible start and end times.
* Applications that are only feasible at very low compute prices.
* Users with an urgent need for large amounts of additional computing capacity.

**Example Use Cases for Sport Instances**<br>

* Image rendering.
* Genomic sequencing.
* Algorithmic trading engines.

### Dedicated Hosts

___

1. **Compliance**: Regulatory requirements that may not support multi-tenant virtualization.
2. **Licensing**: Great for licensing that does not support multi-tenancy or cloud deployments.
3. **On-Demand**: Can be purchased on-demand (hourly).
4. **Reserved**: Can be purchased as a reservation for up to 70% off the on-demand price.

### Exam Tips - EC2 Overview:

* Select the capacity you need **right now**
* Grow and shrink when you need
* Pay for what you use
* Wait minuted, not months

### Exam Tips - EC2 Instance: Pricing Options

1. **On-Demand**: Pay by the hour or second, depending on the type of instance you run. Great for flexibility.
2. **Spot**: Purchase unused capacity at a discount of up to 90%. Prices fluctuate with supply and demand. Great for
   application with flexible start and end times.
3. **Reserved**: Reserved capacity for 1 or 3 years. Up to 72% discount on the hourly charge. Great if you have known,
   fixed requirements.
4. **Dedicated**: A physical EC2 server dedicated for your use. Great if you have server-bound licenses to reuse or
   compliance requirements.

### Exam Tips - AWS CLI Exam Tips

* **Least Privilege**: Always give your users the **minimum amount** of access required to do their job.
* **Use Groups**: **Create IAM groups** and assign your users to groups. Groups permissions are assigned using IAM
  policy documents. Your users will **automatically inherit** the permissions of the group.

### Exam Tips - AWS CLI

1. **Secret Access Key**: You will only see this once! if you lose it, you can delete the access key ID and secret
   access key
   and regenerate them. You will need to run **aws configure** again.
2. **Don't Share Key Pairs**: Each developer should have their own access key ID and secret access key. Just like
   passwords, they should not be shared.
3. **Supports Linux, Windows, macOS**: You can install the CLI on your Mac, Linux, or Windows PC. You can also use it on
   EC2 instances.