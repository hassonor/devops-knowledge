#### Types of Encryption

1. **Encryption in Transit**:
    * SSL/TLS
    * HTTPS
2. **Encryption at Rest: Server-Side Encryption**
    * **SSE-S3:** S3-managed keys, using AES 256-bit encryption
    * **SSE-KMS:** AWS Key Management Service-managed keys
    * **SSE-C:** Customer-provided keys
3. **Encryption at Rest: Client-Side Encryption**
   You encrypt the files yourself before you upload them to S3.

#### Enforcing Server-Side Encryption: Two Ways to Do It

* **Console**: Select the encryption setting on your S3 bucket. The easiest way is just a checkbox in the console.
* **Bucket Policy**: You can also enforce encryption using a bucket policy. This method sometimes comes up in the exam.

1. `x-amz-server-side-encryption` if the file is to be encrypted at upload time, the `x-amz-server-side-encryption`
   parameter will be included in the request header.
2. Two Options
    1. `x-amz-server-side-encryption: AES256` (SSE-S3 --- S3-managed keys)
    2. `x-amz-server-side-encryption: aws:kms` (SSE-KMS --- KMS-manages keys)
3. **PUT Request Header**: When this parameter is included in the header of the **PUT** request, it tells S3 to encrypt
   the object at the time of upload, using the specified encryption method.

You can create a bucket policy that denies any S3 **PUT** request that doesn't include
the `x-amz-server-side-encryption` parameter in the request header.

### Exam Tips:

* **Encryption in Transit**:
    * SSL/TLS
    * HTTPS
* **Encryption at Rest: SSE**:
    * Server-side encryption
    * SSE-S3 (AES 256-bit)
    * SSE-KMS
    * SSE-C
* **Client-Side Encryption**:
    * You encrypt the files yourself before you upload them to S3.
* **Enforcing Encryption with a Bucket Policy**:
    * A bucket policy can deny all **PUT** requests that don't include the `x-amz-server-side-encryption` parameter in
      the request header.
  