#### Exam Tip: ACID with DynamoDB

___

* DynamoDB transactions provide developers atomicity, consistency, isolation and durability (ACID) across 1 or more
  tables within a single AWS account and region.
* You can use transactions when building applications that require coordinated inserts, deletes or updates to multiple
  items as part of a single logical business operation.

#### Use Cases for DynamoDB Transactions

___

* Processing financial transactions
* Fulfilling and managing orders
* Building multiplayer game engines
* Coordinating actions across distributed components and services

#### Transactions

___

* Multiple "all-or-nothing" operations
* Financial transactions
* Fulfilling orders
* 3 options for reads: eventual consistency, strong consistency and transactional.
* 2 options for writes: standard and transactional
* Up to 25 items or 4 MB of data

#### Exam Tips: DynamoDB Transactions

___

* If you see any scenario question that mentions ACID requirements, think **DynamoDB transactions**.
* DynamoDB transactions provide developers **atomicity, consistency, isolation, and durability** (ACID) across 1 or more
  tables within a single AWS account and region.
* **All-or-nothing** transactions.