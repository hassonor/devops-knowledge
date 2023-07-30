#### 4 Ways to Scale: Types of Scaling

___
There 4 types of scaling we can use to adjust our relational database performance.

1. `Aurora Serverless` - We can offload scaling to AWS. Excels with unpredictable workloads.
2. `Read Replicas` - Creating read-only copies of our data can help spread out the workloads.
3. `Scaling Storage` - Storage can be resized, but it's only able to go up, not down.
4. `Veritcal Scaling` - Resizing the database from one size to another can create greater performance.

#### Exam Tip: Scaling vs. Refactoring

___

* You will be given scenarios and unless otherwise specified. **refactoring and changing to DynamoDB is a viable scaling
  choice.**
* It won't work that easily in the real world, but in the exam, **switching database types** can solve the problem.

#### Exam Tips: Relational Database Scaling

___

* **Read Replicas**: Read-heavy workload = Read Replicas
* **Careful with Storage**: RDS storage only scales up - it won't scale back down.
* **Vertical Scaling**: Don't shy away from this scaling type.
* **Multi-AZ**: Unless It's a dev environment, turn this on.
* **Aurora Everything**: Whenever possible, use `Aurora` if the situation calls for a relational database.