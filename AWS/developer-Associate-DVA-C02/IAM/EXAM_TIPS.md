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

#### AWS CLI

___

* `Least Privilege`: Always give your users the minimum amount of access required to do their job.
* `Use Groups`: Create IAM groups and assigns your users to groups. Group permissions are assigned using IAM policy
  documents.

1. `Secret Access Key`: You will only see this once! if you lose it, you can delete the access key ID and secret access
   key and regenerate them. You will need to run `aws configure` again.
2. `Don't Share Key Pairs`: Each developer should have their own access key ID and secret access key. Just like
   passwords, they should not be shared.
3. `Supports Linux, Windows MacOS`: You can install the CLI on your Mac, Linux or Windows PC. You can also use it on EC2
   instances.