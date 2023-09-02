#### What is ElastiCache?

___

1. `In-Memory Cache (Key Value)`: ElastiCache make it easy to deploy, operate, and scale an in-memory cache in the
   cloud.
2. `Imporves Database Performace`: It allows you to retrieve information from fast, in-memory caches instead of slower
   disk-based storage.
3. `Great for Read-Heavy Database Workloads`: Caching the results of I/O intensive database queries. Also for storing
   session data for distributed applications.

#### 2 Types of ElastiCache

___

* `Memcached`:
    * Great for basic object caching.
    * Scales horizontally, but there is no persistence, Multi-AZ or failover.
    * A good choice if you just want basic caching, and you want your caching model to be as simple as possible.

* `Redis`:
    * A more sophisticated solution with enterprise features like persistence, replication, Multi-AZ, and failover.
    * Supports sorting and ranking data (e.g., for gaming leaderboards), and complex data types like lists and hashes.

#### ElastiCache Exam Tips:

* ElastiCache is an in-memory cache designed to improve read performance for read-heavy databases.
* `Memcached`:
    * In-memory, key-value data store.
    * Object caching is your primary goal.
    * You want to keep things as simple as possible.
    * You don't need persistence or Multi-AZ.
    * You don't need to support advanced data types or sorting.
* `Redis`:
    * In-memory, key-value data store.
    * You are performing data sorting and ranking, such as gaming leaderboards.
    * You have advanced data types, such as lists and hashes.
    * You need data persistence.