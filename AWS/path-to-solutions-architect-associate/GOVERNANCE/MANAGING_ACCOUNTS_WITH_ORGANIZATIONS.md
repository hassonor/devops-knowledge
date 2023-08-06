#### What is Organizations?

___
AWS Organizations is a free governance tool that allows you to create and manage multiple AWS accounts. With it, you can
control your accounts from a single location rather than jumping from account to account.

#### Key Features in Organizations

___

* `Logging Accounts`: It's best practice to create a specific account dedicated to logging. CloudTrail supports logs
  aggregation.
* `Programmatic Creation`: Easily create and destroy new AWS accounts.
* `Reserved Instances`: Rls can be shared across all accounts.
* `Consolidated Billing`: The primary account pays the bills.
* `Service Control Policies`: SCPs can limit users' permissions.

#### Service Control Policies

___

* Once implemented, these policies will be applied to every single resource inside an account. They are the ultimate way
  to restrict permissions, and even apply to the root account.

```json
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "DenyStopAndTerminate",
      "Effect": "Deny",
      "Action": [
        "ec2:StopInstances",
        "ec2:TerminateInstances"
      ],
      "Resource": "*"
    }
  ]
}
```

#### Exam Tip: Logs and SCPs

___

* You will be given scenarios about wanting to ensure logs are centralized and no one can edit or delete them.
* When these come up, `make sure to select a solution that uses Organizations` to centralize your logs and SCPs to
  restrict anyone from making changes to them.

#### Exam Tips: Organizations

___

* `Control`: SCPs are the best way to have the final say in what you can do in your AWS account.
* `Cost`: Billing can easily roll up to a single account for payment.
* `CloudTrail`: It's important to know you can designate a single AWS account to hold your logs.
* `Sharing Rls`: Rls can be shared across accounts. This allows you to have one "billing" account to hold the Rls.