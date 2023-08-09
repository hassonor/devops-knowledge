#### Step Scaling

____

* **Scaling Out**:
    * **Add 10** instances when memory is **between 60-80%**
    * **Add 15** instances when memory is **between 80-100%**
* **Scaling In**:
    * **Terminate 10** instances when memory **between 40-20%**
    * **Terminate 15** instances when memory is **between 20-0%**

#### Instance Warm-Up and Cooldown

___

1. **Warm-Up**: Stops instances from being placed behind the load balancer, failing the health check, and being
   terminated.
2. **Cooldown**: Pauses Auto Scaling for a set amount of time Helps to avoid runaway scaling events.
3. **Avoid Trashing**: You want to create instances quickly and spin them down slowly.

#### Scaling Types:

___

* **Reactive Scaling**: You are playing catchup. Once the load is there, you measure it and then determine if you need
  to create more resources.
* **Scheduled Scaling**: If you have a predictable workload, create a scaling event to get your resources ready to go
  before there are actually needed.
* **Predictive Scaling**: AWS uses its machine learning algorithms to determine when you will need to scale. They are
  reevaluated every 24 hours to create a forecast for the next 48 hours.

#### Exam Tip: It Costs How much?

___

* You will be given scenarios where you will need to know the **cost implications** and **reasons why you might or might
  not want to change one those numbers (minimum,maximum and desired capacity)**

#### Exam Tips: Auto Scaling Policies

___

* **Scale out Aggressively**: Get ahead of the workload.
* **Scale in Conservatively**: Once the instance are up, slowly roll them back when not needed.
* **Provisioning**: Keep an eye on provisioning times. Bake those AMIs to minimize it.
* **Costs**: Use EC2 RIs for minimum count of EC2 instances.
* **CloudWatch**: Your no.1 tool for alerting Auto Scaling that you need more or less of something.