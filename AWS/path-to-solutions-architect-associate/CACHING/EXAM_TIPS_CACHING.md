#### 4 Questions to ask in the Exam:

___

* Can it be cached?
* What king of cache should be used?
* How does the content get updated?
* Does it add anything besides speed?

#### CloudFront and Global Accelerator

___

* `CloudFront is the only option` to add HTTPS to a static website being hosted in an S3 bucket.
* `Always favor answers that` include caching. The exam doesn't usually dive into the additional costs and instead
  frames caching only in the positive.
* `Global Accelerator is your friend` whenever the scenario talks about IP caching. Its primary use on the test will be
  to reduce issues with customers caching old IP addresses.

#### Database Caching

___

* `If you see "in-memory database"`, that should make you think of 2 solutions: Redis and DynamoDB. If the scenario
  offers DynamoDB, pick that.
* `Redis has more features` than Memcached. It can be used as a cache or as a persistent data store, whereas Memcached
  is just a cache.
* `Backups are not supported` on any solutions besides Redis. Memcached and DAX are not a source of truth for your data.