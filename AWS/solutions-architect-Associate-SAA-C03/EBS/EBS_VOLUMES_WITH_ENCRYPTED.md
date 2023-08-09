#### Exam Tips: Encrypted Volumes

* Data at rest is encrypted inside the volume.
* All data in flight moving between the instance and the volume is encrypted.
* All snapshots are encrypted.
* All volumes created from the snapshot are encrypted.

#### Exam Tips: How to Encrypt Volumes

* Create a snapshot of the unencrypted root device volume.
* Create a copy of teh snapshot and select the encrypt option.
* Create an AMI from the encrypted snapshot.
* Use that AMI to launch new encrypted instances.