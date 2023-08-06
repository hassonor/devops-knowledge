#### What is PaaS?

___

* Platform as Service (PaaS) is a `single-stop application deployment model`. You bring your code, and the provider
  builds everything for you, deploys your application and then manages it going forward.

#### Elastic Beanstalk: The Amazon PaaS tool - Elastic Beanstalk is your one-stop for everything AWS related.

___

* `Automation`: Elastic Beanstalk automated all your deployments. You can templatize what you would like your
  environment to look like.
* `Deployment`: It will handle all your deployments. You can upload your code, test your code in a staging environment,
  and then deploy to production.
* `Management`: Elastic Beanstalk will handle building out the inside of your EC2 instances for you. You don't have to
  get on the hosts yourself.

#### Exam Tip: Elastic Beanstalk Is Easy

___

* `Scenarios on the exam that are looking for simple one-stop solutions` would benefit from Elastic Beanstalk.
* The approach of "`bring your code and that's it`" means you have to do very little work to spin something up.

#### Exam Tips: Elastic Beanstalk

___

* `PaaS`: beanstalk handles it all! There is very little you need to do.
* `Hand Holading`: It's a great solution to start with, but in general it's only for simpler web applications.
* `Platform Types`: Supports containers, Windows and Linux applications. You don't have to memorize them all.
* `Traditional`: It's not serverless. Beanstalk is creating and managing standard EC2 architecture.