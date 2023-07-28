#### Exam Tip: DLQs Are the Best Sideline

___

* If the scenario laid out mentions problems with a message in SQS, immediately think about DLQs and visibility timeout.
* It's important to set up a **CloudWatch alarm to monitor queue depth**.

#### Exam Tips: Dead-Letter Queues:

___

* `Monitor, Monitor, Monitor`: Make sure you set up an alarm and alert on queue depth.
* `It's Not Special`: DLQs are just SQS queues that are set to receive the reject messages.
* `Same Retention Windows`: Messages will be held up to 14 days.
* `Ustable with SNS`: You can create SQS DLQ for SNS topics. 