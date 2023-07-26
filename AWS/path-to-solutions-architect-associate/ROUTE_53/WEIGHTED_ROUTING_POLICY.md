#### Weighted Routing Policy - Exam Tips

___

* Allows you to split your traffic based on different weights assigned.
* **For example, you can set 10% of your traffic to go to** `us-east-1` **and 90% to go to** `eu-west-1`.

#### Health Checks - Exam Tips

* You can set health checks on `individual` record sets.
* If a record set `fails` a health check, it will be removed from Route 53 until it `passes` the health check.
* You can set SNS notifications to `alert` you about failed health checks.