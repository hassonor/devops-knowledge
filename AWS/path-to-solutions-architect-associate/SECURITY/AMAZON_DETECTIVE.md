#### What is Detective?

___

* Using Detective, you can `analyze, investigate, and quckly identify` the root cause of potential security issues or
  suspicious activity.
* Detective pulls data in from your AWS resources and uses `machine learning, statistical analysis, and graph theroy` to
  build a linked set of data that enables you to quickly figure out the root cause of your security issues.

#### Detective Sources

___
Detective uses a number of sources withing your AWS account (
including `VPC Flow Logs, CloudTrail logs, Amazon Elastic Kubernetes Service audit logs, and Amazon GuardDuty findings`)
to automatically create an overview of your users, resources and the interactions between them over time.

#### Use Cases for Detective:

___

* `Triage Security Findings`:
    * If you have a suspected security instance, you need to be able to quickly assess if it's in fact real or a false
      positive.
    * Detective generates visualizations that can show you what resources, IP addresses, and AWS accounts are connected
      to your security incident to determine if the finding is an actual malicious activity or not.
* `Threat Hunting`:
    * In comparison to root cause analysis, you can also be proactive and go threat hunting.
    * Detective helps with threat hunting by creating detailed visualizations on specific resources, such as IP
      addresses, AWS accounts, VPC and EC2 instances.

#### Exam Tips: Amazon Detective

___

* Detective operates across multiple AWS services and analyzes the `root cause` of an event.
* Do not confuse this with `Inspector`, which is an automated vulnerability management service that continually scans
  EC2 and container workloads for software vulnerability and unintended network exposure.