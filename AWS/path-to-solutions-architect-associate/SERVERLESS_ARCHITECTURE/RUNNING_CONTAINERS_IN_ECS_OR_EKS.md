#### Why ECS?

___

* `Management of Containers at Scale`: ECS can manage 1,10,hundreds or thousands of containers. It will appropriately
  place the containers and keep them online.
* `ELB integration`: Containers are appropriately registered with the load balancers as they come online and go offline.
* `Role integration`: Containers can have individual roles attached to them, making security a breeze.
* `Ease of Use`: Extremely easy to set up and scale to handle any workload.

#### ECS vs. EKS: How do we decide when to pick ECS or EKS?

___

* `ECS`: `Proprietary` AWS container management solution. Best used when you are all in on AWS and looking for
  something `simple`.
* `EKS`: AWS-managed version of `open-source Kubernetes` container management solution. Best used when you
  are `not all in on AWS`. More work to configure and integrate with AWS.

#### Exam Tip: ECS is Preferred

___

* `If you see container mentioned, you should think ECS`.
* The `only exception` to this is the question is asking about open source, Kubernetes, or running the container
  on-premises. In that situation, you'd want to select `EKS`.

#### Exam Tips: ECS or EKS:

___

* `Preference`: Generally, favor using AWS-designed services over third party.
* `Open Source`: Anytime you see open source or Kubernetes, think EKS.
* `High Level`: The exam won't ask the specifics of ECS or EKS usage.
* `Length`: Great for one-off or long-running applications.