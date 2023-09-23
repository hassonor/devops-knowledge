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