#### What is Directory Service?

___
AWS Directory Service is a fully managed version of Active Directory. It allows you to offload the painful parts of
keeping AD online to AWS while still giving you the full control and flexibility AD provides.

#### Available Types

___

* `Managed Microsoft AD`: This is the entire AD suite. You can easily build out AD in AWS.
* `AD Connector`: Creates a tunnel between AWS and your on-premises AD.
* `Simple AD`: Standalone directory powered by Linux Samba Active Directory - compatible server.

#### Exam Tip: Know the Uses

___

* You will primarily see `2 types of Directory Service` referenced on the exam: `Managed Microsoft AD`
  and `AD Connector`.
* `Understanding the uses for both at a high level will help lead you to the right answer.`.

#### Exam Tips: Directory Service

___

* `Know the Type`: You will need to know the use cases for each type of Directory Service.
* `Managed Service`: Whenever possible, use Directory Service over EC2 instances for AD.
* `On-Premises`: It's okay leave AD on-premises. This is frequently the case in exam scenarios.