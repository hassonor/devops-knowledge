### Partitions and Segments

___

* Topics are made of partitions
* Partitions are made of segments (files)
* Only one segment is ACTIVE (the one data is being written to)
* Two segment settings:
    * `log.segment.bytes`: the max size of a single segment in bytes (default 1GB)
    * `log.segment.ms`: the time Kafka will wait before committing the segment if not full (1 week)

#### Segments and Indexes

* Segments come with two indexes (files):
    * An offset to position index: helps Kafka find where to read from to find a message
    * A timestamp to offset index: helps Kafka find messages with a specific timestamp

#### Segments: Why should I care?

* A smaller `log.segment.bytes` (size, default: 1GB) means:
    * More segments per partitions
    * Log Compaction happens more often
    * BUT Kafka must keep more files opened (Error: Too many open files)
* _Ask yourself_: how fast will I have new segments based on throughput?
* A smaller `log.segment.ms` (time, default 1 week) means:
    * You set a max frequency for log compaction (more frequent triggers)
    * Maybe you want daily compaction instead of weekly
* _Ask yourself_: how ofter do I need log compaction to happen?

### Log cleanup policies

___

* Many Kafka clusters make data expire, according to policy
* That concept is called log cleanup

1. Policy 1: `log.cleanup.policy=delete` (Kafka default for all user topics)
    * Delete based on age of data (default is a week)
    * Delete based on max size of log (default is -1 == infinite)
2. Policy 2: `log.cleanup.policy=compact` (Kafka default for topic `__consumer__offsets`)
    * Delete based on keys of your messages
    * Will delete old duplicate keys `after` the active segment is committed
    * Infinite time and space retention

#### Log Cleanup: Why and When?

* Deleting data from Kafka allows you to:
    * Control the size of the data on the disk, delete obsolete data
    * Overall: Limit maintenance work on the Kafka Cluster
* How often does log cleanup happen?
    * Log cleanup happens on your partition segments!
    * Smaller / More segments means that log cleanup will happen more often
    * Log cleanup shouldn't happen too often => takes CPU and RAM resources
    * The cleaner checks for work every 15 seconds (`log.cleaner.backoff.ms`)

### Log Cleanup Delete

* `log.retention.hours`
    * Number of hours to keep data for (default is 168h - one week)
    * Higher number means more disk space
    * Lower number means that less data is retained (if your consumers are down for too long, they can miss data)
    * Other parameters allowed: `log.retention.ms`, `log.retention.minutes` (smaller unit has precedence)
* `log.retention.bytes`:
    * Max size in Bytes for each partition (default is -1 - infinite)
    * Useful to keep the size of a log under a threshold
* Use cases: two common pair of options:
    1. One week of retention:
        * `log.retention.hours=168` and `log.retention.bytes=-1`
    2. Infinite time retention bounded by 500MB:
        * `log.retention.ms=-1` and `log.retention.bytes=524288000`