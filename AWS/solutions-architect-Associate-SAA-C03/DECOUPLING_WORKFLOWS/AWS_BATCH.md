#### What is AWS Batch?

___

1. **Batched Workloads**: Allows you to `run batch computing workloads` within AWS (run on `EC2` or `EC2/Fargate`).
2. **Make Things Simpler**: Removes any `heavy lifting for configuration and management` of infrastructure required for
   computing.
3. **Automatically Provision and Scale**: Capable of `provisioning accurately sized compute resources` based on number
   of jobs submitted, and `optimizes the distribution of workloads`.
4. **No Install Required**: Allows you to skip installation and maintenance of batch computing software, so you
   can `focus on obtaining and analyzing the results`.

#### Important Components

___

* **Jobs**: Units of work that are submitted to AWS Batch (e.g: `shell scripts`, `executables`, and `Docker images`).
* **Job Definitions**: Specify how your jobs are to be run (essentially, the `blueprint for the resources` in the job).
* **Job Queues**: Jobs get `submitted to specific queues` and reside there until scheduled to run in a compote
  environment.
* **Compute Environment**: Set of managed or unmanaged `compute resources used to run your jobs`.

#### Fargate or EC2 Compute Environments

___
`Fargate` is the `recommended` way of launching most batch jobs. Sometimes, `EC2` is the best choice!

* **Custom AMI Needed**: `Custom AMIs` can only be run via EC2.
* **vCPU Requirements**: Anything needing `more than four vCPUs` needs to use EC2.
* **Memory Requirements**: EC2 is recommended for anything needing `more than 30 GiB of memory`.
* **GPU or Graviton CPU**: If your job `require GPU`, then it must be on EC2! `Arm-based Graviton CPU` can only be
  leveraged via EC2 for AWS Batch.
* **linuxParameters**: When using `linuxParamters parameters`, you must run on EC2 compute.
* **Number of Jobs**: For a `large number of jobs`, it's best to run on EC2. Dispatched at a `higher rate` (more
  concurrency) than Fargate.

#### AWS Batch or AWS Lambda

___

* `Time Limits`: AWS Lambada currently has a `15-minute execution time limit` Batch does not have this.
* `Runtime Limitations`: Lambda is `fully serverless`,but it has natively `limited runtimes`! Big tradeoff.
* `Disk space`: AWS Lambda has `limited disk space`, and `EFS` required functions `live withing a VPC`.
* `Batch Runtimes`: `Batch uses Docker`, so `any runtime` can be used.

#### Managed and Unmanaged Compute Environments

___

* **Managed**:
    * `AWS manages` capacity and instance types.
    * Compute resource specs are defined when environment is created.
    * ECS instances are launched into VPC subnets.
    * Default is the most recent and approved Amazon ECS AMI.
    * You can `use your own AMI`
    * Leverage `Fargate`, `Fargate Spot`, and regular `Spot instances`
* **Unmanaged**:
    * You `manage your own resources entirely`.
    * AMI must meet Amazon ECS AMI specs.
    * You managed `everthing`.
    * Less commonly used compared managed.
    * Good choice for `extremely complex or specific requirements`.

#### Exam Tips: Executing Batch Workloads using AWS Batch

___

* `Long-Running Workloads`: Perfect for _long-running and event-driven workloads._ Anything _requiring more than 15
  minutes_.
* `Managed Service`: Leverage AWS to handle the infrastructure creations and configurations.
* `Jobs and Job Definitions`:
    * `Jobs`: Units of work submitted to AWS batch.
    * `Job definitions`: Blueprints within the job.
    * All job get `submitted to queues`.
* `Batch or Lambda?`: AWS Lambda has several limitations. Consider: `runtimes`,`execution time limits`, and
  file `storage sizes`.
* `What Type of Compute?`: Use cases determine when to use `Fargate` or `ECS EC2 instances`. Consider
  the `number of jobs` and `specific resource requirements` (e.g., memory and GPU).
* `Managed or Unmanaged`: `Managed` compute environments `leverage AWS for managing capacity and compute`. They are the
  most common.
    * `Unmanaged allows you to manage EVERYTHING`. They are used for specific scenarios.