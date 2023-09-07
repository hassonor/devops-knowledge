### Producer Acknowledgements (acks)

___

* Producers can choose to receive acknowledgement of data writes:
    * `acks=0`: Producer won't wait for acknowledgment (possible data loss)
        * When `acks=0`, producers consider messages as "written successfully" the moment the message was sent without
          waiting for the broker to accept it at all
        * If the broker goes offline or an exception, happens, we won't know and `will lost data`
        * Useful for data where it's okay to potentially lose messages, such as a metrics collection
        * Produces the `highest throughput` setting because the network overhead is minimized
    * `acks=1`: Producer will wait for leader acknowledgments (limited data loss)
        * When `acks=1`, producers consider a message as "written successfully"
          when the message was acknowledged by only the leader
        * Default for Kafka v1.0 to v2.8
        * Leader response is requested, but replication is not a guarantee as it happens in the background
        * If the leader broker goes offline unexpectedly but replicas haven't replicated the data yet, we have a data
          loss
        * If an ack is not received, the producer may `retry the request`
    * `acks=all (acks=-1)`: Leader + replicas acknowledgment (no data loss)
        * When `acks=all`, producers consider messages as "written successfully" when the message is accepted by all
          in-sync replicas (ISR).
        * Default for Kafka 3.0+

#### Producer `acks=all & min insync.replicas`

* The leader replica for a partition checks to see if there are enough in-sync replicas for safely writing the message
  (controlled by the broker setting `min.insync.replicas`)
    * `min.insync.replicas=1`: only the broker leader needs to successfully ack
    * `min.insync.replicas=2`: at least the broker leader and one replica need to ack

#### Kafka Topic Availability

* `Availability: (considering RF=3)`:
    * `acks=0 & acks=1`: if one partition is up and considered an ISR, the topic will be available for writing.
    * `acks=all`:
        * `min.insync.replicas=1`: (default): the topic must have at least 1 partition up as an ISR (that includes the
          reader), and so we can tolerate two brokers being down.
        * `min.insync.replicas=2`: the topic must have at least 2 ISR up, and therefore we can tolerate at most one
          broker being down (in the case of replication factor of 3),
          and we have the guarantee that for every writing, the data will be at least written twice
        * `min.insync.replace=3`: this wouldn't make much sense for a corresponding replication factor of 3, and we
          couldn't tolerate any broker going down.
        * In summary, when `acks=all` with `replication.factor=N` and `min.insync.replicas=M` we can tolerate `N-M`
          brokers going down for topic availability purposes.
* `acks=all` and `min.insync.replicas=2` is the most popular option for data durability and availability and allows you
  to withstand at most the loss of `one` Kafka broker