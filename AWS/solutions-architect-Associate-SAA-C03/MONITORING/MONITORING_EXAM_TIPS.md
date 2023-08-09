#### CloudWatch Overview

___

* **CloudWatch is the main tool** for anything alarm related.
* **Not everything should go through CloudWatch**. AWS standards should be watched by AWS Config.
* **Know your intervals**: The standard metric is delivered every five minutes, while detailed monitoring delivers data
  every one minute.

#### Application Monitoring with CloudWatch Logs:

___

* **CloudWatch Logs is the place for logs.**: It's important to know `EC2`, `on-premises`,`RDS`,`Lambda`
  and `CloudTrail` can all integrate with this service.
* **SQL? Think CloudWatch Logs Insights**.
* **Real time means Kineses.**: Avoid picking `CloudWatch Logs` if it asks for a **real-time** logging service.

#### Visualizing Data and Monitoring Containers at Scale

___

* **Grafana might be best for visualization of container metrics**: If you need an AWS-managed service for correlation
  and visualization of container or IoT metrics, this may be the best options.
* **Monitoring container metrics at scale? Think Amazon Managed Service for Prometheus**: Leverage this service for any
  Kubernetes-based metrics monitoring at scale. It can be an Amazon EKS cluster or your own self-managed cluster.
* **They are both managed services.**: AWS handles scaling and high availability for you.
