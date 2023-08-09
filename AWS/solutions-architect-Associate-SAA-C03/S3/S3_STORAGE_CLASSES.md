#### S3 Standard

1. **High Availability and Durability**: Data is stored redundantly across multiple devices in multiple facilities (>=
   AZs):
    1. 99.99% availability
    2. 99.99999999999% durability
2. **Designed for Frequent Access**: Perfect fo frequently accessed data.
3. **Suitable for Most Workloads**:
    1. The default storage class.
    2. Use cases include websites, content distribution, mobile and gaming applications, and big data analytics.

#### S3 Standard-Infrequent Access (S3 Standard-IA):

* **DESIGNED FOR INFREQUENTLY ACCESSED DATA**
* **Rapid Access**: Used for data that is accessed less frequently but requires rapid access when needed.
* **You Pay to Access the Data**: There a low per-GB storage price and a per-GB retrieval fee.
* **Use Cases**: Great for long term storage backups and as a data store for disaster recovery files.

#### S3 ONE ZONE-INFREQUENT ACCESS

* Like S3 Standard-IA, but data is stored redundantly within a single AZ.
* Costs **20% less** than regular S3 Standard-IA.
* Great for long-lived, infrequently accessed, non-critical data.

#### S3 Intelligent-Tiering: 2 TIERS: Frequent and infrequent Access

* Automatically moves your data to the most cost-effective tier based on how frequently you access each object.

### 3 Glacier Options

____

* You pay each time you access your data.
* Use only for archiving data.
* Glacier is cheap storage.
* Optimized for data that is very infrequently accessed.

#### Option 1: Glacier Instant Retrieval

* Provides **long-term data archiving** with instant retrieval time for your data.

#### Option 2: Glacier Flexible Retrieval

* Ideal storage class for archive data that does not require immediate access but needs
  the flexibility to retrieve large sets of data at no cost, such as backup or disaster recovery use cases. Can be
  minutes or up to 12 hours.

#### Option 3: Glacier Deep Archive

* Cheapest storage class and designed for customers that retain data sets for 7-10 years or longer to meet customer
  needs and regulatory compliance requirements. The standard retrieval time is 12 hours, and the build retrieval time is
  48 hours.
