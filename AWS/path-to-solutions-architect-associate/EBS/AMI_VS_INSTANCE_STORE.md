### Study Tips

____

#### Instance Store Volumes

* Instance Store volumes are sometimes called ephemeral storage.
  Instance store volumes **cannot be stopped**. If the underlying host fails, you will lose your data.
  You can, however, reboot the instance without losing your data. If you delete the instance, you will lose the instance
  store volume.

#### EBS Volumes

* EBS-backed instances **can be stopped**. You will not lose the data on this instance if it is stopped.
  You can also reboot an EBS volume and not lose your data. By default, the root device volume will be deleted on
  termination. However, you can tell AWS to keep the root device volume with EBS volumes.

### Exam Tips

___

#### AMIs: EBS vs. Instance Store

* Instance store volumes are sometimes called ephemeral storage.
* Instance store volumes **cannot be stopped**. If the underlying host fails, you will lose your data.
* EBS-backed instance **can be stopped**. You will not lose the data on this instance if it is stopped.
* You can reboot both EBS and instance store volumes, and you will not lose your data.
* By default, both root volumes will be deleted on termination. However, with EBS volumes, you can tell AWS to keep the
  root device volume.
* **BONUS TIP**: An AMI is just a blueprint for an EC2 instance.
