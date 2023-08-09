#### S3 Prefixes Explained

* `mybucketname/folder1/subfolder1/myfile.jpg` > `/folder1/subfolder1`
* `mybucketname/folder2/subfolder1/myfile.jpg` > `/folder2/subfolder1`
* `mybucketname/folder3/myfile.jpg` > `/folder3
* `mybucketname/folder4/subfolder4/myfile.jpg` > `/folder4/subfolder4`

### S3 Performance

___
**S3 has extremely low latency. You can get the first byte out of S3 withing 100-200 ms** <br><br>
You can also achieve a high number of requests: **3,500 PUT/COPyu/POST/DELETE** and **5,500 GET/HEAD** requests per
second, per prefix.

1. You can get better performance by spreading your reads across **different prefixes**. For example, if you are using *
   *2 prefixes**,
   you can achieve **11,000 requests per second**.
2. If we used all **4 prefixes** in the last example you would achieve **22,000 requests per second**.

#### S3 Limitations When Using KMS

* If you are using **SSE-KMS** to encrypt your objects in S3, you must keep in mind the **KMS limits**.
* When you **upload** a file, you will call `GenerateDataKey` in the KMS API.
* When you **download** a file, you will call `Decrypt` in the KMS API.

#### KMS Request Rates

* Uploading/Downloading will count toward the **KMS quota**.
* Currently, you **cannot** request a quota increase for KMS.
* Region-specific, however, it's either **5,500, 10,000, or 30,000** request per second.

### S3 Performance: Uploads

#### Multipart Uploads

* Recommended for files **over 100 MB**
* Required for files **over 5 GB**
* Parallelize uploads (increases **efficiency**)

### S3 Performance: Downloads

#### S3 Byte-Range Fetches

* Parallelize **downloads** by specifying byte ranges.
* If there's a failure in the download, it's only for a specific byte range.

#### S3 Byte-Range Fetches

* Can be used to **speed up** downloads.
* Can be used to download **partial amounts of the file** (e.g., header information)

### Exam Tips: Optimizing S3 Performance

* `mybucketname/folder1/subfolder1/myfile.jpg` > `/folder1/subfolder1`
* You can also achieve a high number of requests: **3,500 PUT/COPY/POST/DELETE** and **5,500 GET/HEAD** requests per
  second, per prefix.
* You can get better performance by spreading your reads across **different prefixes**. For example, if you are using *
  *2 prefixes**,you can achieve **11,000 requests per second**.

#### Exam Tips: If you are using SSE-KMS to encrypt your objects in S3, you must keep in ming the KMS limits.

* Uploading/downloading will count toward the **KMS quota**.
* Region-specific, however it's either **5,500, 10,000** or **30,000** requests per second.
* Currently, you **cannot** request a quota increase for KMS.

#### Exam Tips: When Uploading/downloading
* Use **multipart uploads** to increase performance when **uploading files** to S3.
* Should be used for any files **over 100 MB** and must be used for any file **over 5 GB**.
* Use **S3 byte-range fetches** to increase performance when **downloading files** to S3.
