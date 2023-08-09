#### Amazon MQ Overview

___

* **Message Broker**: `Message broker service` allowing easier `migration of existing applications` to the AWS Cloud.
* **Variety**: Leverages `multiple programming lanuages, operationg systems`, and `messaging protocols`.
* **Engine Types**: Currently supports both `Apache ActiveMQ` or `RabbitMQ` engine type.
* **Managed Service**: Allows you to easily `leverage exisitng apps` without managing and maintaining your own system.

#### SNS with SQS vs. Amazon MQ

___

* **Topics and Queues**: Each offers architectures with `topics and queues`. Allows for `one-to-one` or `one-to-many`
  messaging designs.
* **New Applications**: If creating `new applications`, look at `SNS and SQS`: simpler to use, highly scalable, and
  simple APIs. Good fit for most new use cases.
* **Existing Applications**: if `migrating exisiting applications` with `messaging systems in place`, you likely want
  to `consider Amazon MQ`.
* **Publicly Accessible?**: Amazon MQ `REQUIRES private networking` like VPC, Direct Connect, or VPN. `SNS and SQS`
  are `publicly accessible by default.
* `Amazon MQ has NO default AWS integrations`

#### Configuration Brokers

___

1. **Single-Instance Broker**: `One broker` lives within `one Availability Zone (AZ)`. Perfect use for `development`
   environments. `RabbitMQ has a Network Load Balancer in front`.
2. **Highly Available**: Amazon MQ offers `highly available architectures` to `minimize downtime`, during maintenance.
   Architecture `depends on the broker engine type`.
3. **Amazon MQ for ActiveMQ**: With `active/standby deploymnets`, one instance will remain available at all times.
   Configure network of brokers with separate maintenance windows.
4. **Amazon MQ for RabbitMQ**: Cluster deployments are logical `grouping of three broker nodes` across `multiple AZs`
   sitting `behind Network Load Balancer`.

#### Exam Tips: Brokering Messages with Amazon MQ

___

* **Service Review**: `Managed broker service` for easily migrating message broker systems to the AWS Cloud.
* **Engine Types**: Allows you to leverage both `Apache ActiveMQ` or `RabbitMQ` engine types.
* **Specific Messaging Protocols**: Anything specific to `JMS` or messaging protocols
  like `AMQP 0-9-1, AMQP 1.0, MQTT, OpenWire` and `STOMP`.
* **New or Existing Applications**: `New applications` should try and leverage `SNS with SQS`.`Existing applications`
  with messaging systems may be a better fir for `AmazonMQ`.
* **Private Networking Only**: Amazon MQ restricts access to `private networking`. Must have `VPC connectivity` (e.g.
  Direct Connect or Site-to-Site VPN).
* **Single-Instance Broker or Highly Available**: `Single-instance broker` configurations are perfect
  for `development environments`. `Each engine type` also offers their own type of `highly available configuration`.