#### 4 Questions to Ask in the Exam

___

1. Is the application right for containers?
2. Do you need those servers?
3. Is the application AWS specific?
4. How long does the code need to run?

#### AWS Lambda

___

* `Lambda loves roles`: Whenever you are talking about credentials and Lambda, ensure you are attaching a role to the
  function.
* `Be familiar with Lambda triggers`: You will commonly see questions asking what can kick off a Lambda function. Know
  that S3, Kinesis and EventBridge(formerly CloudWatch Events) are common triggers.
* `Know Lambda's limitations`: Functions should be short. You can allocate up to 10 GB of RAM and 15 minutes of runtime.
* `Any AWS API call`: Can be trigger to kick off an EventBridge rule. This is faster than trying to scrape through
  CloudTrail.

#### Containers and Images

* `Open source = Kuberenetes`: If the question asks for a container management solution that can fun in AWS and
  on-premisses, you will want to consider Amazon EKS or EKS Anywhere.
* `Fargate can't work alone`: In order to use Fargate, you must be using Amazon ECS or EKS. Not all scenarios specify
  ECS and EKS, and they make it sound as if Fargate is a service by itself.
* `Containers are flexible`: Containers can encompass just about any workload. Generally, it's preferred to use
  containers rather than EC2 on the exam.
* `Know the basics`: While the exam doesn't cover containers themselves in too much depth, it's good to know you start
  with a Dockerfile, build an image, upload that to a repo, and then run it on a host.

#### Amazon Aurora Serverless

___

* `On-demand or auto scaling database`: Questions regarding auto-scaling databases should likely involve Amazon Aurora
  Serverless databases.
* `Variable traffic or workloads`: If designing a new application with unknown workloads or traffic spikes to the
  database, look for answers including this service.
* `Capacity planning`: When questions mention capacity planning for a new application with a database or a development
  environment, then they are going to be using Amazon Aurora Serverless.

#### AWS X-Ray

___

* `AWS X-Ray`: Used to gain application insights using requests and responses of services and functions at different
  points in an application flow.
* `Traces and downstream response times`: If these terms are brought up in the question, then you will want to look for
  AWS X-Ray.

#### AWS AppSync

___

* `Managed GraphQL`: Questions that ask about the best architecture for a managed GraphQL interface for any frontend
  application or developer will more than likely include AWS AppSync.