#### Introduction to EC2

___

* EC2 is like a VM, hosted in AWS instead of your own data center.
* Select the capacity that you need right now
* Grow and shrink when you need.
* Pay for what you use.
* Wait minutes, not months!

### EC2 Instance Pricing Options

___

* `On Demand`: Pay by the hour or the second depending on the type of instance you run.
* `Reserved`: Reserved capacity for one or three years. Up to 72% discount on hourly charge. Regional.
* `Spot`: Purchase unused capacity at a discount of up to 90%. Prices fluctuate with supply and demand.
* `Dedicated`: A physical EC2 server dedicated for your use. the most expensive option.

#### On-Demand Instances

* `Flexible`: Low cost and flexibility of Amazon EC2 without any up-front payment or long-term commitment.
* `Short-Term`: Application with short-term, spiky, or unpredictable workloads that cannot be interrupted.
* `Testing The Water`: Application being developed or tested on Amazon EC2 for the first time.

#### Reserved Instances

* `Predictable Usage`: Applications with steady state or predictable usage.
* `Specific Capacity Requirements`: Application that require reserved capacity.
* `Pay Up-Front`: You can make up-front payments to reduce their total computing costs even further.
* `Standard Rls`: Up to 72% off on-demand price.
* `Convertible Rls`: Up to 54% off on-demand price. Has the option to change to a different Reserved Instance type of
  equal or greater value.
* `Scheduled Rls`: Launch within the time window you define. Match your capacity reservation to a predictable recurring
  schedule that only required a fraction of a day, week or month.

#### Spot Instances

* `When To Use Spot Instances`
    * Applications that have flexible start and ent times.
    * Applications that are only feasible at very low compute prices.
    * Users with an urgent need for large amounts of additional computing capacity.

#### Dedicated Hosts

* `Compliance`: Regulatory requirements that may not support multi-tenant virtualization.
* `On-Demand`: Can be purchased on-demand (hourly).
* `Licensing`: Great for licensing which does not support multi-tenancy or cloud deployments.
* `Reserved`: Can be purchased as a reservation for up to 70% off the on-demand price.

#### Saving Plans

___

1. `Save up to 72%`: All AWS Compute usage regardless of instance type or Region.
2. `Commit To One or Three Years`: Commit to use a specific amount of compute power (measured in $/hour) for a one-year
   or three-year period.
3. `Super Flexible`: Not only EC2, also include serverless technologies like Lambda and Fargate.

#### Exam Tips: EC2 Instance: Pricing Options

___

* `On Demand`: Pay by the hour or the second depending on the type of instance you run. Great for flexibility.
* `Reserved`: Reserved capacity for one or three years. Up to 72% discount on hourly charge. Great if you have known,
  fixed requirements.
* `Spot`: Purchase unused capacity at a discount of up to 90%. Prices fluctuate with supply and demand. Great for
  application with flexible start and end times.
* `Dedicated`: A physical EC2 server dedicated for your use. Great if you have server-bound licenses to reuse or
  compliance requirements.

### Exploring EC2 Instance Types

___

1. `Hardware`: When you launch an instance, the instance type determines the hardware of the host computer used for your
   instance.
2. `Capabilities`: Each instance type offers different compute, memory and storage capabilities. These types are grouped
   in instance families.
3. `Application Requirements`: Select an instance type based on the requirements of the application that you plan to run
   on your instance.

#### Exam Tips: Determines the hardware of the host computer

Each instance type offers different compute, memory and storage capabilities. These types are grouped in instances
families. Select an instance type based on the requirements of your application.
