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
