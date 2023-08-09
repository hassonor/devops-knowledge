#### Parameter Store

___

* Parameter Store is a capability of AWS Systems Manager that provides secure, hierarchical storage for configuration
  data management and secrets management.
* You can store data such as passwords, database strings, Amazon Machine Image (AMI) IDs, and license codes as parameter
  values. You can store values as plain text or encrypted data.

#### 2 Big Limits to Parameter Store

___

1. Limit to the number of parameters you can store (currently 10,000).
2. No key rotation

### Exam Tip: Parameter Store or Secrets Manager?

* If you are trying to minimize cost, choose `Parameter Store`.
* If you need more than 10,000 parameters, key rotation, or the ability to generate passwords using CloudFormation, use
  `Secrets Manager`.