#### 3 Upcoming Services:

___

1. `Simple Queue Service (SQS)`: SQS is a fully managed message queuing service that enables you to decouple and scale
   microservices, distributed systems, and serverless applications.
2. `Simple Notification Service (SNS)`: SNS is a full managed messaging service for both application-to-application (
   A2A) and application-to-person (A2P) communication.
3. `API Gateway`: API Gateway is a fully managed service that makes it easy for developers to create, publish, maintain,
   monitor, and secure APIs at any scale.

#### Exam Tip: Never Tightly Couple

___

* On the exam, `avoid answers that include tight coupling` - such as an EC2 instance that is directly communication to
  another EC2 instance.
* While tight coupling is simpler from an architecture
  perspective, `it doesn't offer any meaningful benefits over loose coupling`.

#### Exam Tips: Decoupling Workflows

___

* **Always Loosely Couple**: Even when not specifically asked, loose coupling is the answer.
* **Never Tightly Couple**: Don't select answers that include instance-to-instance communication.
* **Internal and External**: Every level of an application should be loosely coupled.
* **One Size**: Doesn't fit all. There is no one single way to decouple.