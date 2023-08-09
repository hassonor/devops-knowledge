#### What is SQS?

___
Simple Queue Service is a **messaging queue** that allows **asynchronous** processing of work. One resource will write a
message to an SQS queue, and then another resource will retrieve that message from SQS.

#### SQS Settings

___

1. `Delivery Delay`: Default is 0; can be set up to 15 minutes.
2. `Message Size`: Messages can be up to 256 KB of text in any format.
3. `Encryption`: Messages are encrypted in transit by default, but you can add at-rest.
4. `Message Retention`: Default is 4 days; can be set between 1 minute and 14 days.
5. `Long vs. Short`: Long polling isn't the default, but it should be.
6. `Queue Depth`: This can be a trigger for autoscaling.

#### BONUS TIP: SQS is seen in many questions on the exam, and it's worth your time to learn about all its settings.

#### Exam Tips: SQS Messaging

___

* `What Does That Do?`: It's imperative that you know what **all** the settings do.
* `Nothing Lasts Forever`: Messages can only live up to 14 days max.
* `Troubleshooting`: You will need to pinpoint the issues.
* `Polling`: It's important to know the difference between long and short polling.
* `Size`: Messages are 256 KB of text in any format.