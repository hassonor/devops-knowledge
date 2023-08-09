#### What is Fargate?

___

* AWS Fargate is a `serverless compute engine for containers` that works with both Amazon Elastic Container Service (
  ECS) and Amazon Elastic Kubernetes Service (EKS).
* AWS owns and manages infrastructure
* Requires use of ECS or EKS

#### EC2 vs. Fargate

___

* `EC2`:
    * You are responsible for underlying operating system.
    * EC2 pricing mode
    * Long-running containers
    * Multiple containers share the same host
* `Fargate`:
    * No operating system access
    * Pay based on resources allocated and time ran
    * Short-running tasks
    * Isolated environments

#### How Does Lambda Compare?

___

* `Fargate`:
    * Select Fargate when you have `more consistent workloads`.
    * Allows Docker use across the organization and a `greater level of control by developers`.
* `Lambda`:
    * Great for `unpredictable or inconsistent` workloads.
    * Perfect for applications that can be expressed as a `single function`.

#### Exam Tip: Know the Use Cases

___

* `when to use Lambda vs. Fargate vs. EC2`

#### Exam Tips: Fargate:

___

* `Lose the Servers`: Fargate is a "serverless" compute option.
* `Required Tools`: ECS or EKS is a requirement. Fargate doesn't work by itself.
* `Fargate vs. EC2`: Fargate is more expensive, but easier to use.
* `Fargate vs. Lambda`: Fargate is for containers and applications that need to run longer. Lambda excels at short and
  simple functions.