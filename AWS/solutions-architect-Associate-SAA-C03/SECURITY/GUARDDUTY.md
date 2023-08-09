#### Amazon GuardDuty Overview

___

* GuardDuty is a threat detection service that uses machine learning to continuously monitor for malicious behavior.
    * Unusual API calls, calls from a know malicious IP
    * Attempts to disable CloudTrail logging
    * Unauthorized deployments
    * Compromised instances
    * Reconnaissance by would-be attackers
    * Port scanning, failed logins

#### GuardDuty Features

___

* Alerts appear in the GuardDuty console and CloudWatch Events (EventBridge)
* Receive feeds from third parties like `Proofpoint` and `CrownStrike`, as well as `AWS Security`, about known malicious
  domains and IP addresses, etc.
* Monitors CloudTrail logs, VPC Flow Logs and DNS logs
* Centralize threat detection across multiple AWS accounts
* Automated response using CloudWatch Events (EventBridge) and Lambda
* Machine learning and anomaly detection

#### Setting Up GuardDuty: Threat Detection with AI

___

* `7-14 days to set a baseline`: What is normal behavior on your account?
* `Once active`: you will see findings on the GuardDuty console and in CloudWatch Events (EventBridge) only if GuardDuty
  detects behavior it considers a threat.

#### Setting Up GuardDuty: GuardDuty Pricing

___

* 30 DAYS FREE! Charges Based on:
    * Quantity of CloudTrail events
    * Volume of DNS and VPC Flow Logs data

#### Exam Tips: GuardDuty

___

* `Remember what GuardDuty is` and what is allows you to do.
* `Uses AI to learn what normal behavior looks like` in you account and to alert you of any abnormal or malicious
  behavior.
* `Updates a database of known malicious domains` using external feeds from third parties.
* `Monitors` CloudTrail logs, VPC Flow Logs and DNS logs.
* `Findings appear in the GuardDuty dashboards.` CloudWatch Events (EventBridge) can be used to trigger Lambda function
  to address a threat.

