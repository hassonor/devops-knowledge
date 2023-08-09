### Securing Your Bucket with S3 Block Public Access

___

#### Object ACLs vs. Bucket Policies

* **ACCESS CONTROL LIST**: Object ACLs - Object ACLs work on an **individual object** level.
* **BUCKET POLICY**: Bucket Policy - Bucket policies work on an **entire bucket** level.

### What to Know for the Exam

* **Buckets are private by default**: When you create an S3 bucket, it is private by default (including
  all objects within it). You have to allow public access on both the **bucket** and its **objects** in order to make
  the bucket public.
* **Object ACLs:** You can make **individual objects** public using object ACLs.
* **Bucket policies:** You can make **entire buckets** public using bucket policies.
* **HTTP status code:** When you upload object to S3 and it's successful, you will receive an **HTTP 200** code.