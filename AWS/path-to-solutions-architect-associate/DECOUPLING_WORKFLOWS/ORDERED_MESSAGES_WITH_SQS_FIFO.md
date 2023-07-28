#### SQS Message Ordering

___

1. `Standard`:
    * Best-effort ordering
    * Duplicate messages
    * Nearly unlimited transactions per second.
2. `FIFO`:
    * Guaranteed ordering
    * No message duplication
    * 300 messages per second

#### EXAM TIP

___

* `FIFO` is the Only Option: If you ever see a scenario talking about message ordering.
* While there are other ways to enforce message ordering, `FIFO` is the only way it would come up on the exam.

#### FIFO Queues

___

* `Performance`: FIFO queues do not have the same level of performance.
* `Not the Only Way`: You can order messaged with SQS standard, but it's on you to do it.
* `Message Group ID`: This ensures messages are processed one by one.
* `Cost`: It costs more since AWS must spend compute power to deduplicate messages.