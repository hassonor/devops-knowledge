#### Example IAM Policy Document

____

```json
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "*",
      "Resource": "*"
    }
  ]
}
```

#### IAM Basics

___

* IAM is universal not regional.
* The `root account` is created when you first set up your AWS account. The account has complete admin access.
* New users have `no` permissions when first created

#### IAM Access Keys

___

* `Access Keys`: New Users are assigned an **access key ID** and **secret access key** when their accounts are created.
* `Not for Console Access`: These are not the same as password, and you cannot use the access key ID or secret access
  key to log in to the AWS Management Console.
* `Programmatic Access`: You can use access keys to access AWS via the APIs and command line.

#### IAM 101:

___

1. `Viewing Access Keys`: You only get to view the access key ID and secret access key once. If you lose them, you have
   to regenerate them.
2. `Use MFA`: Always set up MFA on your `root` account.
3. `Password Rotation`: You can create and customize your own password rotation policies.