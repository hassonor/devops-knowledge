#### Amazon Aurora Serverless Overview

___

* Two terms to be able to differentiate: `Aurora Provisioned` and `Aurora Serverless`.
* `On Demand`: `on-demand` and `Auto Scaling` configuration for the Amazon Aurora database service.
* `Automate`: `Automation of monitoring` workloads and `adjusting capacity` for databases.
* `Based on Demand`: Capacity adjusted `based on application demands`.
* `Billing`: Charged only for resources consumed by DB clusters; `per-second billing`
* `Budget Friendly`: Helps customers stay well within budgets via the `Auto Scaling` and `per-second billing` features.

#### Aurora Serverless Concepts

___

1. `Aurora Capacity Units (ACUs)`:  Measurements on how your clusters scale.
2. Set a `minumum and maximum of ACUs` for scaling requirements - can be zero
3. Allocated (quickly) by `AWS-managed warm pools`
4. Combination of about `2 GiB of memory`, matching `CPU`, and `networking capability`.
5. Same data resiliency as Aurora provisioned: `six copies of data across theree AZs`.
6. `Multi-AZ` deployments for establishing `highly available clusters`.

#### Popular Use Cases:

___

* `Variable Workloads`: Unpredictable of sudden activity.
* `Multi-Tenant Apps`: Let the service manage database capacity for each individual app.
* `New Apps`: Unsure what database instance needs are required.
* `Dev and Test`: Development or testing of new features.
* `Mixed-Use apps`: App might serve more than one purpose with different traffic spikes.
* `Capacity Planning`: Easily swap from provisioned to serverless or vice versa.

#### Exam Tips: Amazon Aurora Serverless

___

* `On Demand`: On-demand, Auto Scaling version of Aurora database service. Capacity adjusted for you.
* `ACU`: Set minimum and maximum ACU for scaling needs. Billed per second for used resources only.
* `Popular Exam Secnarios`: Variable workloads, new applications, capacity planning, and development/testing needs.
* `Resilient`: Data resiliency is the same as Aurora provisioned: six copies of data across three AZs.
* `Multi-AZ`: Implement Multi-AZ deployment for highly available workloads.