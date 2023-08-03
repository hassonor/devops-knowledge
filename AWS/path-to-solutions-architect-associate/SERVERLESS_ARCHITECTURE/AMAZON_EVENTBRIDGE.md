#### What is EventBridge?

___
Amazon EventBridge is a serverless `even bus`. It allows you to pass events from `source` to an `endpoint`. Essentially,
it's the glue that holds your serverless application together.

#### Creating a Rule:

___

1. `Define Pattern`: Do you want the rule to be invoked based on an event happening? Or do you want this to be
   scheduled?
2. `Select Event Bus`: Is this going to be an AWS-based event? A custom event? Or a partner?
3. `Select Your Target`: What happens when this event kicks off? Do you trigger a Lambda function? Post to an SQS queue?
   Send an email?
4. `Tag,Tag,Tag!`: It can't be stressed enough: You need to tag `everthing`.
5. `Sit Back`: Wait for the event to happen! Or kick it off yourself to make sure it's working correctly.

#### Exam Tip: EventBridge Is the Glue

___

* Do you want to trigger an action based on something that happened in AWS? `EventBridge can do that for you`.
* EventBridge holds together a serverless application and Lambda functions. Any API call that happens in AWS can alert a
  Lambda function, or a variety different endpoints, that something has happened.

#### Exam Tips: EventBridge

* `API Calls`: A very common use case is triggering Lambda functions when an AWS API call happens.
* `High Level`: There is more to EventBridge than rules, but it won't be on the exam.
* `New vs. Old`: EventBridge is the new name, but you might see CloudWatch Events on the exam.
* `Speed`: This is the fastest way to respond to things happening in your environment.