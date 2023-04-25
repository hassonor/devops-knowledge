#### What is S3?

* **Object Storage**: S3 provides secure, durable, highly scalable object storage.
* **Scalable**: S3 allows you to store and retrieve any amount of data from anywhere on the web at a very low cost.
* **Simple**: Amazon S3 is easy to use, with a simple web service interface.
* S3 IS OBJECT-BASED-STORAGE: Manages data as objects rather than in file systems or data blocks.
    * **Upload any file type** you can think of to **S3**
    * **Examples** include photos, videos, code, documents, and text files.
    * **Cannot** be used to run an operating system or database.

#### S3 Basics

* **Unlimited Storage**: The total volume of data and the number of objects you can store is unlimited.
* **Objects up to 5TB in Size**: S3 objects can range in size from a minimum of 0 bytes to maximum of 5 terabytes.
* **S3 Buckets**: Store files in buckets (similar to folders).

#### Working with S3 Buckets

* **Universal Namespace**: All AWS accounts share the S3 namespace. Each S3 bucket name is globally unique.
* **Example S3 URLs**:
    * https://bucket-nname.s3.Region.amazonaws.com/key-name
    * https://acloudguru.s3.us-east-1.amazonaws.com/orhasson.jpg
* **Uploading Files**: When you upload a file to an S3 bucket, you will receive an HTTP 200 code if the upload was
  successful.
* **Key-Value Store**:
    * **Key**: The name of the object (e.g., Hasson.jpg)
    * **Value**: The data itself, which is made up of a sequence of bytes
    * **Version ID**: Important for storing multiple versions of the same object
    * **Metadata**: Data about the data you are storing (e.g, content-type, last-modified, etc.).

#### Highly Available and Highly Durable

* **Built for Availability**: Built for 99.95% - 99.99% **service availability**, depending on the S3 tier.
* **Designed for Durability**: Designer for 99.999999999% (9 decimal places) durability for **data stored** in S3.

### S3 Standard

___

1. **High Availability and Durability**: Data is stored redundantly across multiple devices in multiple facilities (>=3
   AZs):
    * **99.99%** availability
    * **99.999999999%** durability
2. **Designed for Frequent Access**: Perfect for frequently accessed data.
3. **Suitable for Most Workloads**:
    * The default storage class.
    * Use cases include websites, content distribution, mobile and gaming applications, and big data analytics.

#### Characteristics

* **Tiered Storage**: S3 offers a range of storage classes designed for different use cases.
* **Lifecycle Management**: Define rules to automatically transition objects to a cheaper storage tier or delete objects
  that are no longer required after set period of time.
* **Versioning**: With versioning, all versions of an object are stored and can be retrieved, including deleted objects.

#### Securing Your Data

1. **Server-Side Encryption**: You can set default encryption on a bucket to encrypt all new objects when they are
   stored in the bucket.
2. **Access Control Lists (ACLs)**:
   Define which AWS accounts or groups are granted access and the type of access. You can attach S3 ACLs to individual
   objects within a bucket.
3. **Bucket Policies**: S3 bucket policies specify what action are allowed or denied (e.g, allow user Alive to **PUT**
   but not **DELETE** objects in the bucket).

#### Strong Read-After-Write Consistency

* **After a successful write** of a new object (**PUT**) or an overwrite of an existing object, any subsequent
  read request immediately receives the latest version of the object.
* **Strong consistency** for list operations, so after a write you can immediately perform a listing of the objects
  in a bucket with all changes reflected.

### What to Know for the Exam
* **Object Based**: Object-based storage allows you to upload files.
* **Files up to 5TB**: Files can be from 0 bytes to 5 TB.
* **Not OS or DB Storage**: Not suitable to install an operating system or run a database on.
* **Unlimited Storage**: The total volume of data and the number of objects you can store is unlimited.

### IMPORTANT EXAM TIP
___
#### Files Stored in Buckets
#### S3 is a universal namespace
* `https://bucket-name.s3.Region.amazonaws.com/key-name`
* `https://orhasson.s3.us-east-1.amazonaws.com/orhassonpicutre.jpeg`
* Successful CLI or API uploads will generate an **HTTP 200 status code**

### 4 S3 Object Tips
1. **Key**: The object name (e.g, OrHasson.jpg)
2. **Value**: The data itself, which is made up of a sequence of bytes.
3. **Version ID**: Allows you to store multiple versions of the same object
4. **Metadata**: Data about the data you are storing (e.g., **content-type**, **last-modified**, etc.)