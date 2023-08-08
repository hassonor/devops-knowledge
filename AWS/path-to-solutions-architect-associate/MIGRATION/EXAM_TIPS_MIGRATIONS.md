#### 4 Questions to Ask in the Exam:

___

1. Where are we going?
2. How do we get there?
3. Is it all once?
4. Or is it a partial migration?

#### Migrating Data with AWS Snow Family

___

* `Snowball choices` are ofter based on how much data you are moving. It's good to know Snowballs are perfect for moving
  many terabyte of data.
* `Snowcone and Snowmobile` won't be on the exam as much as Snowball, so it's enough to just know the general overview
  of
  those.
* `When do we use Snowball?` Snowball is best used in situations where you have slow to no internet. Snowball is faster
  and more secure in these situations.

#### 3 Exam Tips for Storage Gateway

___

1. `Hybrid`: Anytime on-premises storage is brought up, think: "Which version of Storage Gateway could complement
   this?".
2. `Out of Space?`: File Gateway is the perfect solution if your local network-attached storage is full.
3. `It's a VM`: Storage Gateway is run locally as a VM on-premises.

#### DataSync and Transfer Family

___

* `DataSync` is an agent-based solution that excels at one-time migrations of file shares into AWS.
* `EFS, S3 and FSx` are both viable locations for DataSync to transfer content into.
* `Trasfer Family` allows you to use legacy file transfer protocols to give older applications the ability to read and
  write from S3.

#### Moving to the Cloud with Migration Hub

___

* `Migration Hub` is an organizational tool that gives you a way to organize all your steps. You will need other tools
  to complete the migration though.
* `Database Migration Service` is your go-to tool for any sort of database migration. It works for on-premises to the
  cloud, or for moving data between different RDS databases on the cloud.
* `Do you have VMs? Server Migration Service` is the tool you will want to use to migrate out of the data center and
  into AWS.

#### Application Discovery Service

___

* Quickly migrate entire applications to the AWS Cloud.
* Agentless discovery can be used via OVA file deployment to vSphere.
* Agent-based discovery collected detailed information of VMs on both Linux and WWindows OS.

#### Application Migration Service

___

* Also known as `AWS MGN`
* Automated lift-and-shift service for migration infrastructure to AWS
* Replicated source servers (e.g, VM, physical, or Azure VM) into AWS for non-disruptive cutovers
* RTO of minutes and RPO of sub-seconds