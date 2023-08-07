#### 4 Questions to Ask in the Exam:

___

1. Can it be centralized?
2. How do we standardize?
3. How do we enforce the standards?
4. Are the users internal or external?

#### AWS Organizations

___

* `Service control policies (SCPs)` have the ultimate say whether an API call goes through. They are the **only** way to
  restrict what the root account can do.
* `Centralized logs` are always the right answer. CloudTrail offers support to log everything into a single AWS account.
* `Isolating workloads` into separate accounts is a great way to add more layers of security and controls. Avoid answers
  that lumb everything together.

#### 3 Exam Tips for AWS Config

___

1. `Standardization`: Anytime a "rule" needs to be set up for an account, think about using Config to check for
   compliance.
2. `Automate the Response`: Config offers the ability to automatically remediate problems using Automation documents.
3. `Know What Changed`: Config is the one-stop shop to see what changed. It will provide you with a history of all your
   architecture.

#### Authentication

___

* `User management` requires the right tool. Make sure you are using AWS SSO for internal user management and Cognito
  for external.
* `Active Directory` is a common topic that should immediately make you think Directory Service. If it's a lift and
  shift, pick the Managed Microsoft AD. If AD is staying on-premises, select AD Connector.
* `Cross-account role access` is always a better solution than creating unnecessary IAM credentials.

#### Cost Management

___

* `Tracking costs` is a common exam topic. You will want to use a combination of tags, Cost Explorer and AWS Budgets.
* `Get ahead` of problems by creating proactive alerts. When users get to the 80% threshold, tell someone via SNS.
* `Automate` the response. Spending too much money? Shut something dow. Always think about how you can remove the human
  interaction.
* `Detailed reports and exploring costs`. These questions will usually involve AWS Cost and Usage Reports or Cost
  Explorer for in-depth reporting purposes.
* `Use AWS Compute Optimizer` to generate recommendations on implementing more accurate compute sizes based on your
  actual needs.

#### Trusted Advisor

___

* `It's free` to use, but you will need a Business or Enterprise Support plan to get the most useful checks.
* `There are limited` to Trusted Advisor. It's strictly audition tool, and it won't solve the problem for you. This is a
  common trap the exam will set for you.
* `Automate` the response. Use EventBridge to kick off a Lambda function to solve the problem for you.

#### Accounts and Licenses

___

* `AWS Control Tower` can be used to implement compliance and account governance within multi-account environments using
  automated account setups.
* `Leverage preventive or detective guardrails` with AWS Control Tower. There are implemented via SCPs and AWS Config (
  respectively).
* `AWS License Manager` provides a simplified way to manage licenses from supported vendors to prevent license abuse and
  overcharges. It works in AWS and on-premises.

#### Infrastructure and Deployments

___

* `AWS Service Catalog` allows end users to provision pre-approved products and services via shared catalog portfolios.
  These are written in CloudFormation.
* `AWS Proton` can empower developers to automate the provisioning of their entire application stack for
  container-based or serverless architectures.

#### The Well-Architected Tool

___

* `Use the AWS Well-ARchitected Tool` to document architectural decisions and their measurements against
  well-established industry best practices.

#### AWS Health

___

* `AWS Health` is a dashboard and service meant to provide notifications of both public and account-specific events
  within AWS.
* `Questions about service alerts or notification of EC2 hardware maintenance reboots` will leverage AWS Health in some
  manner.
