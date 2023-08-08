#### How Do We Migrate Data: Moving Data to AWS

___

* `What's the best way to get it to the cloud?`
    * `Internet`: Using your existing connection is convenient but potentially very slow and could be a security risk.
    * `Direct Connect`: This can be faster and more secure, but it's not always practical if it's not needed after the
      migration.
    * `Physical`: What if you bundled your data and physically delivered it to AWS? You could bypass the internet
      entirely.

#### What is the Snow Family?

___
The Snow Family is a set of secure appliances that provide petabyte-scale data collection and processing solutions at
the `edge` and `migrate` large-scale data into and out of AWS. They offer `built-in computing` capabilities, enabling
customers to run their operations in remote locations that do not have data center access or reliable network
connectivity.

#### Snowcone: The Smallest Device in the snow family

___

* 8 TB of storage, 4 GB of memory and 2 vCPUs.
* Easily migrate data to AWS after you have processed it
* IoT sensor integration
* Perfect for edge computing where space and power are constrained

#### Snowball Edge: The jack of all trades

___

* 48 TB to 81 TB in storage
* Storage, Compute and GPU flavors
* Varying amount of CPU and RAM
* Perfect for off-the-grid computing or a migration to AWS

#### Snowmobile: The heavy hitter

___

* 100 PB of storage
* Designed for exabyte-scale data center migration
* Did we say it's cool?
* There is a good change you don't need this

#### Exam Tip: How Do You Transport Your Data?

___

* `You will be given scenarios that ask you to pick a solution for data migration`.
* When these come up, make sure to pay attention to restrictions in the situation. Not being able to transfer over the
  internet, having a large amount of data, or having a very slow internet connection could all be reasons to use
  Snowball.

#### Exam Tips: Snow Family

___

* `Use Cases`: Know the general use cases for each Snow Family member.
* `Snowcone`: Small, robust edge computing. Can hold up to 8 TB of data.
* `Snowball`: Storage, Compute and GPU. Can hold up to 81 TB of data.
* `Snowmobile`: Up to 100 PB in a very large truck.
* `Both Ways`: The Snow Family works to get data into AWS, as well as shipped back to you.
* `Timing`: Generally, turnaround is a week, but that mostly depends on the customer.