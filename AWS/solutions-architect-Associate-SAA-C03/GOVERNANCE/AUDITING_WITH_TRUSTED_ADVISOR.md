#### What Is Trusted Advisor?

___
AWS Trusted Advisor is a fully managed best-practice `auditing` tool. It will scan 5 different parts of your account and
look for places where you could improve your adoption of the recommended `best practices` provided by AWS.

#### Supported Checks: 5 Questions Trusted Advisor Asks

___

* `Cost Optimization`: Are you spending money on resources that aren't needed?
* `Performance`: Are your services configured properly?
* `Security`: Is your AWS architecture full of vulnerabilities?
* `Fault Tolerance`: Are you protected when something fails?
* `Service Limits`: Do you have room to scale?

#### Exam Tip: Automate a Response

___

* `Focus on answers that have an automation component`
* It doesn't have to fix the issue, but it should at least alert users that something is potentially wrong.

#### Exam Tips: Trusted Advisor

___

* `Alerts`: Something wrong? Tell someone! Use SNS to let users know.
* `Cost`: To get the most useful checks, you will need a Business or Enterprise Support plan.
* `Limits`: Trusted Advisor will `not` fix the problems for you.
* `Automate`: Use EventBride (CloudWatch Events) to kick off Lambda to solve the problem for you.