#### Exam Tips: 5 Tips for EBS Volumes and Snapshots

* Volumes exist on EBS, whereas snapshots exist on S3.
* Snapshots are point-in-time photographs of volumes and are incremental in nature.
* The first snapshot will take some time to create. For consistent snapshots, stop the instance and detach the volume.
* You can share snapshots between AWS accounts as well as between regions, but first you need to copy that snapshot to
  the target region.
* You can resize EBS volumes on the fly as well as changing the volume types.