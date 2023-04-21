### File Storage
1. **Amazon EFS**: A scalable, elastic and cloud native Network file system.
2. **Amazon FSx for Windows Filer Server**: A fully managed file storage for Windows Server.

### Block Storage
1. **Amazon EBS**: Easy to use, high performance block storage.

### Object Storage
1. **Amazon S3**: Store and retrieve any amount of data from anywhere in the world.

#### Storage Classes
1. S3 Standard
2. S3 Standard-Infrequent
3. S3 One Zone Infrequent
4. S3 Glacier
   * Data archival and long-term backup
   * $1/TB/month
   * Query-in-place functionality
   * Three retrieval options:
     1. Standard - low cost
     2. Bulk retrieval - cost-effective for large amounts
     3. Expedited - urgent retrieval
5. S3 Glacier Deep Archive
6. S3 Intelligent Tireing

|                        | Amazon S3 Standard | Amazon S3 Intelligent-Tiering | Amazon S3 Standard-Infrequent Access | Amazon S3 One Zone-Infrequent Access | Amazon S3 Glacier | Amazon S3 Glacier Deep Archive |
| --- |--------------------|-------------------------------| --- | --- |-------------------|--------------------------------|
| Availability Zones     | `>=3`                | `>=3  `                       | `>=3`                                 | 1                                    | `>=3`             | `>=3`                          |
| Minimum Storage Charges| N/A                | 30 Days                       | 30 Days      | 30 Days      | 90 Days           | 180 Days                       |
| Retrieval Fees         | N/A                | N/A                           | Per GB                              | Per GB                              | Per GB            | Per GB                         |
| Durability             | 99.999999999%      | 99.999999999%                 | 99.999999999%                        | 99.999999999%                        | 99.999999999%     | 99.999999999%                  |
| Available SLA          | 99.9%              | 99.9%                         | 99.9%                                | 99.5%                                | 99.9%             | 99.9%                          |

### Data Transfer
1. **AWS Storage Gateway**: Provide on-premises access to unlimited cloud storage.
2. **AWS DataSync**: Easily transfer data to and from AWS up to 10 times faster than normal.
3. **AWS Transfer Family**: Transfer files to Amazon S3 using SFTP, FTP and FTPS.