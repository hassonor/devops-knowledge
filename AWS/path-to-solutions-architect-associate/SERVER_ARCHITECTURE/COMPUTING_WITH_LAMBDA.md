#### What is Lambda?

___

* AWS Lambda is `serverless` compute service that lets you run code without provisioning o managing the underlying
  servers. It's like you are running code without computers.

#### Building a Function

___

1. `Runtime`: You will need to pick from an available runtime or bring your own. This is the environment your code will
   run in.
2. `Permissions`: If your Lambda function needs to make an AWS API call, you will need to attach a role.
3. `Networking`: You can (optionally) define the VPC subnet, and security groups your functions are a part of.
4. `Resources`: Defining the amount of available memory will allocate how much CPU and RAM your code gets.
5. `Trigger`: What's going to alert your Lambda function to start? Defining a trigger will kick Lambda off if that event
   occurs.

#### Exam Tip

___

* One of the most common ways you are going to see Lambda used is to `"add" features to AWS`.
* If you need to automatically remove entries from a security group, start and stop instances, or do anything else that
  isn't built in, `the answer is most likely going to be to use Lambda to achieve that`.

#### Exam Tips: Lambda:

___

* `Limitations`: Know the limitations and general use cases for the service.
* `How Does It Start?`: It's good to know the common triggers for Lambda.
* `Micorservices`: Lambda excels in running small and lightweight functions.
* `Ecosystem`: Lambda plays a major role in the AWS ecosystem. It's easily integrated with many services.
* `Networking`: Lambda can run inside or outside a VPC.