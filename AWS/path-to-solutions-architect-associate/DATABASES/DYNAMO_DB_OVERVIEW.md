#### Exam Tips: 4 Facts about DynamoDB:

* Stored on SSD storage
* Spread across 3 geographically distinct data centers
* Eventually consistent reads (default)
* Strongly consistent reads

#### Eventually consistent reads vs Strongly consistent reads

* **Eventually**: Consistency across all **copies of data is usually reached within a second**. Repeating a read after a
  short time should return the updated data. Best read performance.

* **Strongly**: A strongly consistent read **returns a result that reflects all writes** that received a successful
  response prior to the read.

#### DynamoDB Accelerator (DAX):

* Fully managed, highly available, in-memory cache
* 10x performance improvement
* Reduces request time from milliseconds to **microseconds** - even under load
* No need for developers to manage caching logic

#### On-Demand Capacity:

* **Pay-per-request** pricing
* Balance cost and performance
* No minimum capacity
* **Pay more per request** than with provisioned capacity
* Use for new product launches

#### Security:

* Encryption at rest using **KMS**
* Site-to-site VPN
* Direct Connect (DX)
* IAM policies and roles
* Fine-grained access
* CloudWatch and CloudTrail
* VPC endpoints