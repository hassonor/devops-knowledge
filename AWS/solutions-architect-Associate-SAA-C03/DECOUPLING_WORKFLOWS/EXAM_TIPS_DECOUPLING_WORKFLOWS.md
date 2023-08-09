#### 4 Questions to Ask in the Exam

___

* Is it synchronous or asynchronous workload?
* What type of decoupling makes sense?
* Does the order of messages matter?
* What type of application load will you see?

#### Amazon SQS: What to Know for the Exam

___

* `SQS can duplicate messages`: THis is only once inn a while, so if it's happening consistently, check for a
  misconfigured visibility timeout or if the developer is falling to make the delete API call.
* `Queues are not bi-directional`: If you need communication to return to the instance that send the message, you will
  need a second queue.
* `Know the defaults`: It's important to understand the standard values for all the SQS settings.
* `Nothing lasts forever`: Messages stored in SQS can only persist up to 14 days.
* `Does order matter?`: If message ordering is important, make sure to select SQS FIFO.

#### Amazon SNS and API Gateway:

___

* `Proactive notifications = SNS`: Any time a question asks about email, text, or any type of push-based notification,
  think of SNS.
* `CloudWatch SNS`: Scenarios that talk about getting a notification from a CloudWatch alarm should immediately make you
  look for SNS in the answer.
* `API Gateway`: You don't need to have an in-depth understanding. You only need to know it acts as a secure from door
  to external communication coming into your environment.

#### AWS Batch:

___

* `Long-running, batched workloads`: Anything related to batch workloads that is long-running (i.e: > 15 minutes) will
  likely involve AWS Batch.
* `Queued workloads`: If you see a question about batch workloads requiring queues, then think of AWS Batch.
* `On-demand alternative to AWS Lambda`: Questions regarding an alternative solution to AWS Lambda due to runtime
  requirements could likely involve the AWS Batch service.

#### Amazon MQ:

___

* `Managed messaging broker`: If there is any mention of managed broker service, think of Amazon MQ.
* `RabbitMQ or ActiveMQ`: Any mention of these two technologies means you should look for Amazon MQ within the answer.
* `Specific messaging protocols`: If you see messaging protocols like JMS, AMQP 0-9-1, AMQP 1.0, MQTT, OpenWire, or
  STOMP, then Amazon MQ has to be in the answer.

#### AWS Steps Functions:

___

* `Serverless orchestration service`: Any questions with this saying will likely involve Step Functions as the answer.
* `Different workflow decision requirements`: Whenever the solution requires different states or logic during
  workflows (e.g. `condition checks`, `failure catches` or especially `wait perionds`), think Step Functions.

#### Amazon AppFlow

___

* `SaaS data ingestion`: For architectures requiring simplified data ingestion from external SaaS applications into AWS,
  this is more than likely the correct solution.
* `Bi-directional`: Remember that this service can be bidirectional in certain use cases. Data can be ingested into or
  out of AWS services depending on configurations.