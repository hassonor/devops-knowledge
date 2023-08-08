#### What Is DataSync?

___
AWS DataSync is an `agent-based` solution for migrating on-premises storage to AWS. It allows you to easily move data
between `NFS` and `SMB` shared and AWS storage solutions.

#### Exam Tip: DataSync Is a Migration Service

___

* `You will given scenarios that ask you to pick a solution for data migration`.
* When these come up, keep DataSync in mind for a one-time migration. If you have hybrid architecture and want a
  continuous sync, think Storage Gateway.

#### Exam Tips: DataSync

___

* `Use Case`: DataSync is used primarily for one-time migrations.
* `Agent Based`: An agent needs to be installed on the architecture on your ent to get it into AWS.
* `Endpoints`: S3, EFS and FSx are all supported locations for your data.
* `High Level`: The exam won't dive into the details of how to set this up or troubleshoot.