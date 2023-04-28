### S3 Replication

1. **You can replicate objects from one bucket to another**:<br>
   Versioning must be enabled on both the source and destination buckets.
2. **Objects in an existing bucket are not replicated automatically**<br>
   Once replication is turned on, all subsequent updated objects will be replicated automatically.
3. **Delete markers are not replicated by default.**
   Deleting individual versions or delete markers will not be replicated.

### Exam Tips: Remember What S3 Replication Is:

1. You can **replicate objects** from one bucket to another.
2. Objects in an existing bucket are **not replicated automatically**.
3. Delete markers are **not replicated by default**.