#### What is Amazon Inspector?

___

* Amazon Inspector is an automated security assessment service that helps improve the security and compliance of
  applications deployed by AWS.
* Amazon Inspector automatically assesses applications for vulnerabilities or deviations from best practices.

#### Assessment Findings

___

* After performing an assessment, Amazon Inspector produces a detailed list of security findings prioritized by level of
  severity.
* These findings can be reviewed directly or as part of detailed assessment reports that are available via the Amazon
  Inspector console or API.

#### 2 Types of Assessment

___

1. `Network Assessments`:
    * Network configuration analysis to checks for ports reachable from outside the VPC
    * Inspector agent is `not` required.
2. `Host Assessments`:
    * Vulnerable software (CVE), host hardening (CIS Benchmarks), and security best practices.
    * Inspector agent `is` required.

#### Exam Tips: How Does It Work?

___

1. `Create` assessment target
2. `Install` agents on EC2 instances
    * AWS will automatically install the agent for instances that allow Systems Manager Run Command
3. `Create` assessment template
4. `Perform` assessment run
5. `Review` findings against rules

#### Exam Tip: Inspector

___

* Going into the exam, remember what Inspector is: It's used to perform vulnerability scans on both EC2 instances and
  VPCs.
* There are called `host assessments` and `network assessments`. You can run these assessments once, or alternatively,
  run them weekly.