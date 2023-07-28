#### Scaling Options: DynamoDB

___

* **Scaling is simplified when using** `DynamoDB`, as AWS does all the heavy lifting for you.
    * `Provisioned`:
        * `Use Case`: Generally predictable workload
        * `Effort to Use`: Need to review past usage to set upper and lower scaling bounds
        * `Cost`: Most cost-effective model
    * `On-Deman`:
        * `Use Case`: Sporadic workload
        * `Effort to Use`: Simple select on-demand
        * `Cost`: Pay small amount of money per read and write. Less cost-effective.

#### Exam Tip

___

* Keep cost in mind rather than performance when scaling `DynamoDB`.
* The exam will generally approach it from a cost perspective.
* `Predictable workload?`: Pick provisioned capacity.
* `Sporadic?`: Pick on-demand.

#### Exam Tips: Non-Relational Database Scaling

___

* **Access Patterns**: Know if it's predicable or unpredictable.
* **Design Matters**: Avoiding hot keys will also lead to better performance.
* **Switching**: You can switch, but only once per 24 hours per table.
* **Cost**: Keep cost in mind when considering which type of table to pick.