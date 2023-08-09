#### Automated Analysis of Data

___

* `Macie uses machine learning and pattern matching to discover sensitive data stored in S3`
    * Uses AI to recognize if your S3 objects contain sensitive data, such as PII, PHI and financial data.
    * Alerts you to unencrypted buckets
    * Alerts you about public buckets
    * Can also alert you about buckets shared with AWS accounts outside of those defined in your AWS organizations
    * Great for frameworks like HIPAA and GDPR

#### Macie Alerts

___

1. You can filter and search Macie alerts in the AWS console
2. Alerts sent to Amazon EventBridge can be integrated with your security incident and event management (SIEM) system
3. Can be integrated with AWS Security Hub for a broader analysis of your organization's security posture
4. Can also be integrated with other AWS services, such as Step Functions, to automatically take remediation actions

#### Exam Tips: Macie

___

* `Remember what Macie is` and what it allows you to do.
* `Macie uses AI to analyze data in S3` and helps identify PII, PHI and financial data.
* `Great for HIPAA and GDPR compliance` as well as preventing identity theft.
* `Macie alerts` can be sent to Amazon EventBridge and integrated with your event management systems.
* `Automate remediation actions` using other AWS services, such as Step Functions.