#### Amazon Resources Names (ARNs)

___

* ARNs all begin with: `arn:partition:service:region:account_id`
    * `paritions` -> `aws | aws-cn`
    * `service` -> `s3 | ec2 | rds` etc.
    * `region` -> `us-east-1 | eu-central-1`
    * `account_id` -> `123145368400912`
* And end with:
    * `resource`
    * `resource_type/resource`
    * `resource_type/resource/qualifier`
    * `resource_type/resource:qualifier`
    * `resource_type:resource`
    * `resource_type:resource:qualifier`
* Examples:
    * `arn:aws:iam:123145368400912:user/ryan`
    * `arn:aws:s3:::my_awesome_bucket/or_hasson.png`
    * `arn:aws:dynamodb:us-east-1:123145368400912:table/orders`
    * `arn:aws:ec2:us-east-1:123145368400912:instance/*`

#### IAM Policies

___

* JSON document that defines permissions
* Identify policy
* Resource policy
* No effect until attached
* List of statements
* A policy document is a list of `statements`.
* Each statement matches an `AWS API request`.

* Example:

```json
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "SpecificTable",
      "Effect": "Allow",
      "Action": [
        "dynamodb:BatchGet*",
        "dynamodb:DescribeStream",
        "dynamodb:DescribeTable",
        "dynamodb:Get*",
        "dynamodb:Query",
        "dynamodb:Scan",
        "dynamodb:BatchWrite*",
        "dynamodb:CreateTable",
        "dynamodb:Delete*",
        "dynamodb:Update*",
        "dynamodb:PutItem"
      ],
      "Resource": "arn:aws:dynamodb:*:*:table/MyTable"
    }
  ]
}
```

* `Effect` is either `Allow` or `Deny`
* Matched based on their `Action`
* And the `Resource` the Action is against

#### Permission Boundaries

___

* Used to `delegate` administration to other users
* Prevent `privilege escalation` or `unnecessarily broad permissions`
* Control `maximum` permissions an IAM policy can grant
* `USE CASES`:
    * Developers creating roles for Lambda functions
    * Application owners creating roles for EC2 instances
    * Admins creating ad hoc users

#### Exam Tips:

___

* Not explicitly allowed == `implicitly denied`
* Explicit deny > everything else
* Only attached policies have effect
* AWS `joins` all applicable policies
* AWS managed vs. customer managed