#### What is CloudWatch?

___

* CloudWatch is a **monitoring** and **observability** platform that was designed to give us insight into out AWS
  architecture. It allows us to monitor multiple levels of out applications and **identify** potential issues.

#### CloudWatch Features: What can CloudWatch do?

___

* **System Metrics**: These are metrics that you get out of the box. The more managed the service is, the more you get.
* **Application Metrics**: By installing the CloudWatch agent, you can get information from inside your EC2 instances.
* **Alarms**: What's the point of collecting data if you don't do something with it? Alarms can alert you when something
  goes wrong.

#### Type Of Metrics

___

1. **Default**: These metrics are provided out of the box and do not require any additional work on your part to
   configure. E.g: `CPU Utilization`, `Network Throughput`.
2. **Custom**: These metrics will need to be provided by using the CloudWatch agent installed on the host.
   E.g: `EC2 Memory Utilization`, `EBS Storage Capacity`.

#### Exam Tip: What Tool Do we Use to Monitor?

___

* **on the exam, the answer is**: `CloudWatch`.
* You need to know the basic checks that are included out of the box, as well as what you're responsible for bringing to
  the table.

#### Exam Tips: CloudWatch

___

* **Go to Tool**: Anytime monitoring comes up, think CloudWatch.
* **Alarms**: There are no default alarms. Anything you want to hear about must be created.
* **Default vs. Custom**: AWS can't see past the hypervisor level for EC2 instances.
* **Managed Services**: The more managed a service is, the more checks you get out of the box.
* **Standard vs. Detailed**: Standard is 5-minute intervals whereas detailed is 1-minute.

