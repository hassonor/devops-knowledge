#### 4 Questions to Ask in the Exam:

___

* Can you automate?
* What kind of automation works in this scenario?
* Is the automation repeatable?
* How would this work cross-region or cross-account?

#### Exam Tips: CloudFormation

___

* `Understanding CloudFormation sections`. While you don't have to be a coding expert, you need to generally know what
  the parameters, mappings, and resource sections of the CloudFormation templates do.
* `Immutable architecture is preferable`. Generally speaking, you will want to select answers the favor having resources
  that can be replaced any time. Stateless is better than stateful on the exam.
* `Mappings anna Parameter Store` can be useful to help make your templates more flexible. Hardcoded IDs (e.g., AMI or
  snapshot ID) are a source of breakage.

#### Exam Tips: Elastic Beanstalk and Systems Manager

___

* `Elastic Beanstalk is a one-stop shop` for all things AWS. Questions looking for a simple solution to bundle and
  deploy applications should favor this over CloudFormation.
* `Automation documetns` are the primary method used in scenarios asking you to configure the inside of an EC2 instance.
* `Don't go too deep` on Systems Manager. While it has a lot of options, this text will focus on Automation documents,
  Parameter Store, and possibly Session Manager.