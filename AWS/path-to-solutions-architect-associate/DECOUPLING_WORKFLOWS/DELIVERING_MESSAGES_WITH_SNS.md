#### What is SNS?

___
SNS is a `push-based` messaging service. It will proactively deliver messages to the endpoints `subsecirbed` to it. This
can be used to alert a system or a person.

#### SNS Settings

___

* `Subscribers`: Kineses Data Firehose, SQS, Lambda, email, HTTP(S), SMS, platform application endpoints.
* `Message Size`: Messages can be up to 256KB of text in any format
* `DLQ Support`: Messages that fail to be delivered can be stored in an SQS DLQ
* `FIFO or Standard`: FIFO only supports SQS as a subscriber
* `Encryption`: Messages are encrypted in transit by default, but you can add at-rest
* `Access Policy`: A resource policy can be added to a topic, similar to S3

#### EXAM TIP

___

* Alerts = SNS
* Anytime you see a need for someone know an AWS event happened, `SNS will be the service to deliver that notifcation`.

#### Exam Tips: SNS Messages

___

* `Push`: Anytime you see this word, think SNS.
* `CloudWatch`: SNS and CloudWatch are best friends and the easiest way to alert you that something happened.
* `Where Does It Go?`: You will need to know all the subscriber options.
* `No Do-Overs`: SNS will only retry HTTP(S) endpoints, but nothing else.