#### Service Overview

___

* `App Insights`: Collects application data for viewing, filtering and gaining `insights abouts requests and responses`
* `Downstream`: `downstream AWS resources` and `other microservices/APIs` or `databases`
* `Traces`: Receives `traces from your applications` for allowing insights
* `Multiple Options`: Integrated services can add `tracing headers`, `send trace data`, or `run the X-Ray daemon`

#### AWS X-Ray Exam Concepts:

___

1. `Segments`: Data containing resource names, request details, and other information
2. `Subsegements`: Segments providing more granular timing information and details
3. `Service graph`: Graphical representation of interacting services in requests
4. `Traces`: Tract ID tracks paths of requests and traces collect all segments in a request
5. `Tracing header`: Extra HTTP header containing sampling decisions and trace ID
6. Tracing header containing added information is named `X-Amzn-Trace-Id`

#### AWS X-Ray Demon:

___

* AWS software application that listens on `UDP port 2000`. It collects raw segment data and sends it to the AWS X-Ray
  API.
* When the daemon is running, it works along with the AWS X-Ray SDKs.

#### AWS Integrations

___

* `Amazon EC2`: Installed, running agent
* `Amazon ECS`: Installed within tasks
* `AWS Lambda`: Simple on/off toggle and it built-in and available for functions
* `Amazon SNS and SQS`: View time taken for messages in queues and topics
* `Amazon API Gateway`: Added to stages as a desired
* `AWS Elastic Beanstalk`: Configuration option

#### Exam Tips and Important Takeaways

___

* `Application Insights`: Collects data for gaining insights to application requests and responses
* `Integrations`: Many AWS integrations available, such as EC2, Lambda and API Gateway
* `Important Terms`: Traces, tracing headers, and segments
* `Exam Keyworkds`: Scenarios involving app, request insights, viewing response times of downstream resources, and HTTP
  response analysis