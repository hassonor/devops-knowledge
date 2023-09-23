### Kafka Monitoring - References

* [https://kafka.apache.org/documentation/#monitoring](https://kafka.apache.org/documentation/#monitoring)
* [https://docs.confluent.io/current/kafka/monitoring.html](https://docs.confluent.io/current/kafka/monitoring.html)
* [https://www.datadoghq.com/blog/monitoring-kafka-performance-metrics](https://www.datadoghq.com/blog/monitoring-kafka-performance-metrics)

### Kafka Security

___

#### The need for security in Apache Kafka

* Currently, any client can access your Kafka cluster `(authentication)`
* The clients can publish / consume any topic data `(authorization)`
* All the data being sent is fully visible on the network `(encryption)`

#### In-flight encryption in Kafka

* Encryption in Kafka ensures that the data exchanged between clients and brokers is secret to routers on the way
* This is a similar concept to a https website

#### Authentication (SSL & SASL) in Kafka

* `SSL Authentication`: clients authenticate to Kafka using SSL certificates
* `SASL/PLAINTEXT`
    * clients authenticate using username / password (weak - easy to setup)
    * Must enable SSL encryption broker-side as well
    * Change in passwords requires brokers reboot (good for dev only)
* `SASL/SCRAM`
    * Username/password with a challenge (salt), more secure
    * Must enable SSL encryption broker-side as well
    * Authentication data is in Zookeeper (until removed) - add without restarting brokers
* `SASL/GSSAPI(Keberos)`
    * Kerberos: such as Microsoft Active Directory (strong - hard to setup)
    * Very secure and enterprise friendly
* `SASL/OAUTHBEARER`
    * Leverage `OAUTH2` tokens for authentication

#### Authorization in Kafka

* Once a client is authenticated, Kafka can verify its identity
* It still needs to be combined with authorization, so that Kafka knows that
* `ACL (Access Control Lists)` must be maintained by administrators to onboard new users

### Kafka Multi Cluster & MirrorMaker

___

#### Kafka Multi Cluster & Replication

* Kafka can only operate well in a single region
* Therefore, it is very common for enterprises to have Kafka clusters across the world, with some level of replication
  between them
* A replication application at its core is just a consumer + a producer
* There are different tools to perform it:
    * `Mirror Maker 2` - open-source `Kafka Connector` connector that ships with `Kafka`
* **Replicating doesn't preserve offsets, just data! Data at an offset in one cluster is not the same as the data at
  same offset in another cluster**

