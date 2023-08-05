#### 3 DDoS Exam Tips

___

1. A Distributed Denial of Service (DDoS) attack attempts to make your website or application unavailable to your end
   users.
2. Common DDoS attacks include Layer 4 attacks such as SYN floods or NTP amplification attacks.
3. Common Layer 7 attacks include floods of GET/POST requests.

#### Exam Tips: What CloudTrail Allows

___

* After-the-fact incident investigation
* Near real-time instruction detection
* Industry and regulatory compliance

#### Exam Tip: CloudTrail

___

* Remember that CloudTrail is basically just CCTV for your AWS account.
* It logs all API calls made to your AWS account and stores these logs in S3.

#### Exam Tip: Shield Protects Against Layer 3 and Layer 4 Only

___

* Remember what Shield is at a high level and that it's used to `protect against DDoS`.
* If you see a scenario question talking about DDoS mitigation or protection against Layer 3 and Layer 4 attacks, think
  AWS Shield.
* Advanced costs $3,000 USD a month but will give you a dedicated 24/7 DDoS Response Team.

#### AWS WAF ALLOWS: 3 Different Behaviors

___

1. `Allow all requests`: except the ones you specify.
2. `Block all requests`: except the ones you specify.
3. `Count the requests `: that match the properties you specify.

#### Exam Tip: WAF Operates at Layer 7

___

* In the exam, you will get scenario-based questions asking how to block layer 7 attacks. Always think of WAF whenever
  you hear the term Layer 7. WAF can block Layer 7 DDoS attacks a well as things like SQL injections and cross-site
  scripting.
* If you need to block access to specific countries or IP addresses, you can also achieve this using AWS WAF.

#### Exam Tips: AWS Firewall Manger:

___

* See a scenario about multiple AWS accounts of resources that need to be secured
  centrally? `Think AWS Firewall Manager!`.

#### Exam Tips: GuardDuty

___

* `Remember what GuardDuty is` and what is allows you to do.
* `Uses AI to learn what normal behavior looks like` in you account and to alert you of any abnormal or malicious
  behavior.
* `Updates a database of known malicious domains` using external feeds from third parties.
* `Monitors` CloudTrail logs, VPC Flow Logs and DNS logs.
* `Findings appear in the GuardDuty dashboards.` CloudWatch Events (EventBridge) can be used to trigger Lambda function
  to address a threat.

#### Exam Tips: Macie

___

* `Remember what Macie is` and what it allows you to do.
* `Macie uses AI to analyze data in S3` and helps identify PII, PHI and financial data.
* `Great for HIPAA and GDPR compliance` as well as preventing identity theft.
* `Macie alerts` can be sent to Amazon EventBridge and integrated with your event management systems.
* `Automate remediation actions` using other AWS services, such as Step Functions.

#### Exam Tip: Inspector

___

* Going into the exam, remember what Inspector is: It's used to perform vulnerability scans on both EC2 instances and
  VPCs.
* There are called `host assessments` and `network assessments`. You can run these assessments once, or alternatively,
  run them weekly.

#### Exam Tips: AWS KMS

* `AWS Key Management Service (AWS SMS)` is a managed service that makes it easy for you to create and control the
  encryption keys used to encrypt your data.
* `You start using the service by requesting the creation of a CMK`. You control the lifecycle of the CMK as well as who
  can use or manage it.

#### Exam Tips: 3 Ways to Generate a CMK

___

1. AWS created the CMK for you. The key material for a CMK is `generated withing HSMs` managed by AWS KMS.
2. Import key material from your `own key management infrastructure` and associate it with a CMK.
3. Have the key material generated and used in an `AWS CloudHSM cluster` as part of the custom key store feature in AWS
   KMS.

#### Exam Tips: 3 Ways to Control Permissions

___

1. `Use the key policy`: Controlling access this way means the full scope of access to the CMK is defined in a single
   document (the key policy).
2. `Use IAM policies in combination with the key policy`: Controlling access this way enables you to manage all the
   permissions for your IAM identities in IAM.
3. `Use grants in combination with the key policy`: Controlling access this way enables you to allow access to the CMK
   in the key policy, as well as allow users to delegate their access to others.

#### KMS vs. CloudHSM

___

* `KMS`:
    * Shared tenancy of underlying hardware
    * Automatic key rotation
    * Automatic key generation
* `CloudHSM`:
    * Dedicated HSM to you
    * Full control of underlying hardware
    * Full control of users groups, keys, etc.
    * No automatic key rotation

#### Exam Tips: Secrets Manager

___

* `Secrets Manager can be used to securely store your application secrets`: database credentials, API keys, SSH keys,
  passwords, etc.
* `Applications use` the Secrets Manager API.
* `Rotating credentials is super easy` - but be careful.
* `When enabled`, Secrets Manager will rotate credentials immediately.
* `Make sure all your application instances are configured to` use Secrets Manager `before` enabling credential
  rotation.

### Exam Tip: Parameter Store or Secrets Manager?

* If you are trying to minimize cost, choose `Parameter Store`.
* If you need more than 10,000 parameters, key rotation, or the ability to generate passwords using CloudFormation, use
  `Secrets Manager`.

#### Exam Tip: Presigned URLs

___

* If you see a scenario question where you need to share private files in your S3 buckets: think `presigned URLs`.

#### Exam Tips: Advanced IAM Policies

___

* Not explicitly allowed == `implicitly denied`
* Explicit deny > everything else
* Only attached policies have effect
* AWS `joins` all applicable policies
* AWS managed vs. customer managed

#### Exam Tips: AWS Certificate Manager

___

* `Know What It Is`: In the exam, you will get scenario-based questions around SSL certificates and what services you
  should use to integrate SSL certificates.
* `Supported Services`: AWS Certificate Manager integrates with Elastic Load Balancing, CloudFront and API Gateway.
* `Benefits`: AWS Certificate Manager is a free service that saves time and money. Automatically renew your SSL
  certificates and rotate the old certificates with new certificates with supported AWS services.

#### Exam Tip: Continuous Audits with AWS Audit Manager

* If you have a scenario question about HIPAA or GDPR compliance that asks about `continuous` auditing or automating
  auditing reports... Think `AWS Audit Manager`.

#### Exam Tip: AWS Artifact

___

* See a scenario question asking about audits and the need for compliance reports? Think `AWS Artifact`.

#### Exam Tips: Cognito:

___

* `User pool`: User directories that provide sign-up and sign-in options for users of your application.
* `Identity pool`: Allows your users to access other AWS services
* `You can use identity pools and users pools separately or together`

#### Exam Tips: Flow

___

1. `Authenticate and get tokens`: Device <-> User Pool
2. `Exchange tokens and get AWS credentials`: Device <-> Identity Pool
3. `Access AWS services using credentials`: Device <-> AWS services

#### Exam Tips: Amazon Detective

___

* Detective operates across multiple AWS services and analyzes the `root cause` of an event.
* Do not confuse this with `Inspector`, which is an automated vulnerability management service that continually scans
  EC2 and container workloads for software vulnerability and unintended network exposure.

#### Exam Tip: AWS Network Firewall

___

* If you have a scenario question about filter your network traffic before it reaches your internet gateway, or if you
  require intrusion prevention systems or any hardware firewall requirement... Thinks `AWS Network Firewall`.

#### Exam Tip: Security Hub

___

* If you have a scenario question about a single place to view all your security alerts across multiple AWS security
  services and accounts... Think `Security Hub`.