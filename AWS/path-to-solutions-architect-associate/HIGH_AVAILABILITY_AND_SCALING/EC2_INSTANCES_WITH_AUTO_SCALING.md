#### Auto Scaling Groups

___
An Auto Scaling group contains a collection of `EC2` instances that are treated as a collective group for purposes
of `scaling` and `management`.

#### Auto Scaling Steps

___

1. **Define Your Template**: You have to pick from your available launch templates or launch configurations.
2. **Networking and Purchasing**: Pick your networking space and purchasing options. Using multiple AZs allows for high
   availability.
3. **ELB Configuration**: `EC2` instances can be registered behind a load balancer. The Auto Scaling group can be set
   to respect the load balancer health checks.
4. **Set Scaling Policies**: Minimum, maximum, and desired capacity needs to be set to ensure you don't have too many or
   too few resources.
5. **Notifications**: SNS can act as a notification tool, allowing you to let someone know when a scaling event occurs.

#### Auto Scaling Restrictions: Stops you from scaling too much

___

* **Minimum**: This is the lowest number of `EC2` instances you will ever have online. You won't dip below this.
* **Maximum**: The highest number of r`EC2` instances you will ever provision. You won't go above this.
* **Desired**: How many instances do you want right now?

#### Exam Tip: Auto Scaling and High Availability

___

* It's important to remember Auto Scaling is vital to creating a highly available application.
* Remember to select answers that **spread resources** out over multiple Availability Zones and utilize load balancers.

#### Exam Tips: Auto Scaling Groups

___

* **Networking**: Auto Scaling groups will contain the location of where your instances will live.
* **Remember ELB**: It's vital to select a load balancer for the instances to live behind.
* **Limits**: Min, max, and desired are the 3 most important settings.
* **Notifications**: SNS can act as a notification tool.
* **Balancing**: Auto Scaling will balance your EC2 instances across the Availability Zones.