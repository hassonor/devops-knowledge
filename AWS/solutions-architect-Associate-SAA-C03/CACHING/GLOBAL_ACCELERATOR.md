#### What is Global Accelerator?

___

* Global Accelerator is a networking service that sends your users' traffic through AWS's global network infrastructure.
  It can increase `performance` and help deal with `IP caching`.

#### 3 Top Features

___

1. `Masks Complex Architecture`: As your applications grow and change, and deployments happen, your users won't notice.
   There will use the same IPs no matter what.
2. `Speeds Things Up`: Traffic is routed through AWS's global network infrastructure.
3. `Weighted Pools`: You can create weighted groups behind the IPs to test out new features or handle failure in your
   environment.

#### Exam Tip: Accelerator Solves IP Caching

___

* If you see a `scenario on the exam talking about IP caching`, you will want to think `Global Accelerator`.
* Those 2 static Ip addresses you are assigned
  will `solve the problem of users not being able to access the proper endpoint` because some of your architecture
  failed and the IP changed behind the scenes.

#### Exam tips: Global Accelerator

___

* `Speed`: It uses edge locations to help speed everything up.
* `Weighting`: You can easily create different weighted groups in each region your architecture lives in.
* `2 Static IPs`: You are provided 2 IPs that don't change. You can also bring your own.