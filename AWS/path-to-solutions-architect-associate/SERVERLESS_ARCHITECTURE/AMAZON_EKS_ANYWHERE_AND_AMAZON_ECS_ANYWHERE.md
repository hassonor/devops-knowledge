#### EKS Anywhere Overview

___

* `On-Premises EKS`: An `on-premises way to manage Kubernetes (K8s) clusters` with the same practices used for Amazon
  EKS.
* `EKS Distro`:
    * Based on `EKS Distro`
    * Allows for `deployment usage`, and `management` methods for clusters in data
      centers.
* `Lifecycle`:
    * Offers `full lifecycle management` of multiple K8s clusters.
    * Operated `independently` of AWS

#### EKS Anywhere Concepts

___

* `Control Pane`: `K8s control pane` management is operated completely by the `customer`.
* `Location`: `K8s control pane location` is entirely within a `customer data center or operations center`.
* `Updates`: Cluster updates are done entirely via `manual CLI` or `Flux`.
* `Curcated Packages`: Curated packages offer `extended core functionalities` of K8s clusters.
* `Enterprise Subscriptions`: Curated packages `require` an Enterprise subscription.

#### ECS Anywhere: Overview

___

* `ECS Anywhere`: Feature of Amazon ECS allowing the `management of container-based apps on-premises`.
* `No Orchestration Needed`: `No need to install and operate` local container orchestration software, meaning
  more `operational efficiency`.
* `Completely Managed`: `Completely managed solution` enabling `standardization of container management` across
  environment.
* `Inbound Traffic`: Keep in mind, `no ELB support` makes inbound traffic requirements less efficient.
* `External`: New launch type noted as `EXTERNAL` for creating services or running tasks.

#### ECS Anywhere Requirements:

___

1. You must have the `SSM Agent`,`ECS agent`,and `Docker` installed.
2. You must first register external instances as `SSM Managed Instances`.
3. `Easily create an installation script` within the ECS console.
4. Scripts contain `SSM activation keys` and `commands` for required software.
5. `Execute scripts` on you `on-premises VMs` or `bare-metal servers`.
6. Deploy containers using the `EXTERNAL` launch type.

#### Exam Tips: EKS Anywhere

___

* `Not Common`: This service is not commonly featured on the exams.
* `AWS Efficiency`: Distro allows customers to maintain similar operational efficiency to Amazon EKS.
* `Anywhere`: Based on the EKS Distro, it allows you to run EKS K8s clusters on-premises.
* `Managed by You`: Everything is managed by you including control plane management and location.

#### Exam Tips: ECS Anywhere

___

* `Amazon ECS`: It is a feature within the Amazon ECS service itself.
* `Requirements`: You must have SSM agent, ECS agent, and Docker installed.
* `Anywhere`: It allows for AWS-managed container orchestration anywhere on-premises.
* `Register and Deploy`: Execute scripts containing required steps, and use `EXTERNAL` launch type.