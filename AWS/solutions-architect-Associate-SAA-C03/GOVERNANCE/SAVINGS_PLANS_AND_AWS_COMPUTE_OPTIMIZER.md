#### What is AWS Compute Optimizer?

___

* `Optimizes`: Analyzes `configurations and utilization metrics` of your AWS resources.
* `Reporting`: Reports `current usage optimizations` and potential `recommendations`
* `Graphs`: Provides `graphical history data` and `projected utilization metrics`.

#### AWS Compute Optimizer Resources: Which resources does the service work with?

___

* `Amazon EC2`
* `Auto Scaling Groups`
* `Amazon EBS`
* `Amazon Lambda`

#### Supported Accounts

___

* `Standalone`: Any standalone AWS account without AWS Organizations enabled
* `Member Account`: Single member accounts within an AWS Organizations
* `Management Account`: AWS Organizations management account with recommendations based on the entire organization

#### Things to Know: Disabled by default!

___

* You `must opt in` to leverage AWS Compute Optimizer.
* After opting in, enhance recommendations via `activation of recommendation preferences` (e.g., enhanced infrastructure
  metrics paid feature).

#### What Are Savings Plans?

___

* `Flexible Pricing`: Offers of flexible pricing models for `up to 72% savings` on compute.
* `Lower Prices`: Lower prices for EC2 instances regardless of `instance family`, `size`, `OS`,`tenancy`, or `Regions`.
* `Variety`: Saving can also apply to `AWS Lambda` and `AWS Fragate` usage.
* `SageMaker`: SageMaker plans for `lowering Amazon SageMaker` instance pricing.
* `Commitments`: Saving are provided as a trade for `long-term commitments`. There are one-year or three-year pricing
  options.
* `Variety`: Savings can also apply to `AWS Lambda` and `AWS Fargate` usage.
* `Pricing Plan Options`: Choose from `AII Upfront`, `Partial Upfront`, or `No Upfront`.

#### Savings Plan Types: Three Different Plan Types

___

* `Compute Savings`:
    * Most flexible savings plan
    * Applies to any EC2 compute Lambda, or Fargate usage
    * Up to 66% savings on compute
* `EC2 Insatnce Savinggs`:
    * Stricter savings plan
    * Applies only to EC2 instances of a specific instance family in specific Regions
    * Up to 72% savings
* `SageMaker Savings`:
    * Apply to SageMaker instances regardless of instance family or sizing
    * Any Region and any component
    * Up to 64% savings

#### Using and Applying Savings Plans

___

1. View `recommendations` within your AWS billing console.
2. Recommendations are `automatically calculated` to make purchasing easier.
3. `Add to cart and purchase directly` within your AWS account.
4. Apply to usage rates `after Reserved Instances` are applied and exhausted.
5. `Consolidated billing family`: Applied to account owner first, and then can be spread to others.

#### Exam Tips and Important Takeaways

___

* `AWS Compute Optimizer`: Provides recommendations based on collected utilization and configuration metrics
* `Optimizer Resources`: Amazon EC2, Auto Scaling groups, AWS Lambda and Amazon EBS
* `AWS Organizations`: Use for an organization in management account, at member account level or a standalone account
* `Savings Plans`: Flexible offerings for pricing on AWS compute usage; similar to Reserved Instances
* `Plan Types`: Compute Savings Plans, EC2 Instance Savings Plans, or SageMaker Savings Plans
* `Pricing Terms`: One-year and three-year agreements. All Upfront, Partial Upfront, or No Upfront