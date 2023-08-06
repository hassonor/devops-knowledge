#### Where can we cache in our AWS applications?

___

* `EXTERNAL`: We can cache data that's going to be returned to our users (e.g, images, videos and static content)
* `INTERNAL`: Caching is an important tool we can use to speed up our databases. The less we walk to the database, the
  better.

#### AWS CACHING OPTIONS

___

* `CloudFront`
* `ElastiCache`
* `DAX`
* `Global Accelerator`

#### EXAM TIP: AWS LOVES CACHES

___

* Whenever possible, `pick an answer that includes a caching solution`. AWS loves to put caches in every possible
  location.

#### Exam Tips: Caches

___

* `Caches, Caches Everywhere`: Caches go in front of everything.
* `Speed`: There other benefits than decreasing latency.
* `Internal vs. External`: It's important to know which type to use in each situation.