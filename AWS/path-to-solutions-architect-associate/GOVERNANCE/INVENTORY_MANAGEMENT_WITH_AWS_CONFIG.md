#### What is Config?

___
Config is an `inventory management and control tool`. It allows you to show the history of your infrastructure along
with creating rules to make sure it conforms the best practices you have laid out.

#### Exam Tip: Config = Standards

___

* In the exam, you should be looking for Config if
  the `question lays out any type of standard that needs to be managed across your accounts.`
* `For example`, you would use Config to ensure your S3 buckets aren't publicly readable or your users are using the
  approved AMI in their EC2 instances.

#### Exam Tips: Config

___

* `Standards`: Config is the best way to check what standards are applied to your architecture.
* `Deleted Resources`: You can track previously deleted AWS resources using Config.
* `Enforcement`: You can use Automation documents or Lambda to enforce your standards.
* `Consolidation`: You can roll up all your results to a single region.