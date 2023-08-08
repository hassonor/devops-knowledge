#### AWS Application Discovery Service: Service Overview

___

* `Plan`: Helps plan migration to AWS via collection of usage and configuration data from on-premises servers
* `Simplify`: Integrates with AWS Migration Hub, simplifying migrations and tracking migration statuses
* `Track`: Helps you easily view discovered servers, group them by application and track each application migration

#### Discovery Types: AWS Application Discovery Service offers two types of discoveries

___

1. `Agentless`:
    * Completed via the `Agentless Collector`
    * `OVA file` withing the VMware vCenter
    * Identifies `hosts and VMs` in vCenter
    * IP and Mac address, resource allocation and hostnames
    * `Utilization data` metrics
2. `Agent Based`:
    * Deploy `AWS Application Dicovery Agent`
    * Each `VM` and each `physical server`
    * Installer for `Windows and Linux`
    * Static config data, time-series performance info, network connections and OS processes

#### AWS Application Migration Service (AWS MGN)

___

* `Lift and Shift`: Automated lift-and-shift service for expending migration of apps to AWS
* `Flexible`: Used physical, virtual or cloud servers to avoid cut-over windows or distributions
* `Replicate`: Replicates source servers into AWS, and automatically converts and launches on AWS to migrate quickly

#### AWS MGN RTO and RPO

___

* `RTO`: Recovery Time Objective -> Typically just minutes; dependent on OS boot time.
* `RPO`: Recovery Point Objective -> measured in the sub-second range.

#### Exam Tips: AWS Application Discover Service

___

* `Application Migration`: Easily and quickly migrate applications to the AWS Cloud.
* `Agentless Discovery`: Agentless discovery performed via OVA file in vCenter. Easy migration of VMs!
* `Aget-Based Discovery`: Installable agent for Windows and Linux to collect detailed information on VMs and physical
  hosts.

#### Exam Tips: AWS Application Migration Service

___

* `AWS MGN`: Also known as AWS MGN, it offers automated lift and shift of migrating infrastructure to AWS.
* `Replication`: Replicate source servers (VMs, physical, or cloud servers) into AWS for non-distributive cutovers.
* `RTO and RPO`: RTO is measured in minutes, depending on OS boot time. RPO is measured in sub-seconds.