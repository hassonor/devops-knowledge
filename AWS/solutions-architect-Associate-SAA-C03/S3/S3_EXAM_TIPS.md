### Exam Tips: S3 Overview

* **Object Based**: Object-based storage allows you to upload files.
* **Files up to 5 TB**: Files can be from 0 bytes to 5 TB.
* **Not OS or DB Storage**: Not suitable to install an operating system or run a database on.
* **Unlimited Storage**: The total volume of data and the number of objects you can store is unlimited.

#### IMPORTANT EXAM TIP

* Files Stored in Buckets
* **S3 is a universal namespace**
    * `https://bucket-name.s3.Region.amazonaws.com/key-name`
    * `https://orhassonwashere.s3.us-east-1.amazonaws.com/orhasson.jpeg`
* Successful CLI or API uploads will generate an **HTTP 200 status code**.

#### 4 S3 Object Tips

1. **Key**: The object name (e.g., Hasson.jpg)
2. **Value**: The data itself, which is made up of a sequence of bytes.
3. **Version ID**: Allows you to store multiple versions of the same object.
4. **Metadata**: Data about the data you are storing (e.g, `content-type, last-modified`, etc.)

### Exam Tips: Securing Your Bucket with S3 Block Public Access

1. **Buckets are private by default**: When you create an S3 bucket, it is private by default (including all objects
   within it).
   You have to allow public access on both the **bucket** and its **objects** in order to make the bucket public.
2. **Object ACLs**: You can make **individual objects** public using object ACLs.
3. **Bucket policies**: You can make **entire buckets** public using bucket policies.
4. **HTTp status code**: When you upload an object to S3 and it's successful, you will receive an **HTTP 200** code.

### Exam Tips: Hosting a Static Website

1. **Bucket Policies**: You can make entire buckets public using **bucket policies**
2. **Static Content**: You can use S3 to host static content only (not dynamic).
3. **Automatic Scaling**: S3 Scales automatically with demand.

### Exam Tips: Versioning Objects in S3

1. **All Versions**: All versions of an object are stored in S3. This includes all writes and even if you delete an
   object.
2. **Backup**: Can be a great backup tool.
3. **Cannot be disabled**: Once enabled, versioning cannot be disabled - only suspended.
4. **Lifecycle Rules**: Can be integrated with lifecycle rules.
5. **Supports MFA**: Can support multifactor authentication.

### Exam Tips Lifecycle Management

1. Automates moving your objects between
2. the different storage tiers
3. Can be used in conjunction with versioning.
4. Can be applied to current versions and previous versions.

### Exam Tips: S3 Object Lock and Glacier Vault Lock

1. Use **S3 Object Lock** to store objects using a write once, read many (WORM) model.
2. Object Lock can be on **individual objects** or **applied across the bucket** as a whole.
3. Object Lock comes in two modes: **governance mode** and **compliance mode**.

* With **governance mode**, users can't overwrite or delete an object version or alter its lock settings unless they
  have special permissions.
* With **compliance mode**, a protected object version can't be overwritten or deleted by any user, including the root
  user in your AWS account.

4. **S3 Glacier Vault Lock** allows you to easily deploy and enforce compliance controls for individual S3 Glacier
   vaults
   with a vault lock policy. You can **specify controls, such a WORM, in a vault lock policy and lock the policy from
   future edits.** Once locked, the policy can no longer be changed.

### Exam Tips: Encrypting S3 Objects

1. **Encryption in Transit**:
    * SSL/TLS
    * HTTPS
2. **Encryption at Rest: SSE**
    * Server-side encryption
    * SSE-S3 (AES 256-bit)
    * SSE-KMS
    * SSE-C
3. **Client-Side Encryption**: You encrypt the files yourself before you upload them to S3.
4. **Enforcing Encryption with a Bucket Policy**:
    * A bucket policy can deny all **PUT** requests that don't include the `x-amz-server-side-encryption` parameter in
      the request header.

### Exam Tips: Optimizing S3 Performance:

1. `mybuckername/folder1/subfolder1/orhasson.jpg` > `/folder1/subfolder1`
2. You can also achieve high number of requests: **3,500 PUT/COPY/POST/DELETE** and **5,500 GET/HEAD** requests per
   second, per prefix.
3. You can get better performance by spreading your reads across **different prefixes**. For example, if you are using
   **2 prefixes**, you can achieve **11,000 requests per second**.
4. **If you are using SSE-KMS to encrypt your objects in S3, you must keep in mind the KMS limits**
    1. Uploading/downloading will count toward the **KMS quota**
    2. Region-specific, however, it's either **5,500, 10,000**, or **30,000** requests per second.
    3. Currently, you **cannot** request a quota increase for KMS.
5. Use **multipart uploads** to increase performance when **uploading files** to S3.
6. Should be used for any files **over 100 MB** and must be used for any file **over 5 GB**.
7. Use **S3 byte-range fetches** to increase performance when **downloading files** to S3.

### Exam Tips: Backing up Data With S3 Replication

1. You can replicate objects from one bucket to another.
2. Object in an existing bucket are not replicated automatically.
3. Delete markers are not replicated by default.