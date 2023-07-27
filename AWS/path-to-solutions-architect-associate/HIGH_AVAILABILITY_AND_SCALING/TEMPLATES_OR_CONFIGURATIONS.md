#### What is a Launch Template?

___
A Launch Template specifies all the needed **settings** that go into building out an EC2 instance. It is a collection of
settings that you can **configure,** so you don't have to walk through the EC2 wizard over and over.

#### Launch Templates vs Configuration

___

* **Templates**:
    * More than just autoscaling
    * Supports versioning
    * More granularity
    * AWS Recommended
* **Configuration**:
    * Only for autoscaling
    * Immutable
    * Limited configuration options
    * Don't use them

#### Exam Tip: What makes a template?

___
On the exam, it's critical to understand what goes into a Launch Template. You need to know that is includes the AMI,
EC2-instance size, security groups, and potentially networking information.

#### Launch Templates / Configs:

___

* **Launch Templates**: The most up to date and flexible way to create a template.
* **Launch Configurations**: The older version. It's not "wrong" to use them, but if possible use templates.
* **User-Data**: User-data is included in the template or configuration.
* **Change**: Can be versioned, configuration are immutable
* **Networking**: Configs don't include networking information. Templates could.