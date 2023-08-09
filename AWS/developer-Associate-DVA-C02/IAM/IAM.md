#### IAM Basics

___

* `Centralized`: Control of your AWS account.
* `Access`: Shared access to your AWS account.
* `Permissions`: Granular permissions.
* `Identity Federation`: Supports well-known identity providers such as: Active Directory, Facebook and LinkedIn.

1. `Multi-Factor Authentication`: Provides increased security for your AWS account settings and resources.
2. `Temporary Access`: Provides temporary access for users/devices and services, as necessary.
3. `Password Policies`: Allows you to set up your own password rotation policy.
4. `Integrated`: Integrates with many AWS services.
5. `Compliance`: Supports PCI DSS compliance.

#### Users,Groups and Roles

___

* `Users`: End Users
* `Groups`: A collection of users under one set of permissions.
* `Roles`: You create roles and can then assign them to users, applications and services to give access to AWS
  resources.

#### IAM Policy

____

* **A document that defines one or more permissions**.
* An IAM policy can be attached to a user, group or role.

#### Exam Tips: Testing IAM Permission

___

* **IAM Policy Simulator**
    * Test IAM permissions before you commit them to production
    * Validate that the policy works as expected.
    * You can test policies attached to exising user.
    * [https://policysim.aws.amazon.com](https://policysim.aws.amazon.com)
