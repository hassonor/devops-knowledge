### Security Groups - Exam Tips
1. Changes to security groups take effect immediately.
2. You can have any number of EC2 instances within security group.
3. You can have multiple security groups attached to EC2 instances.
4. All inbound traffic is blocked by default.
5. All outbound traffic is allowed.

#### Bootstrap Scripts
A bootstrap script is **a script that runs when the instance first runs**.
It passes user data to the EC2 instance and can be used to install applications (like web servers and databases),
as well as do updated and more.