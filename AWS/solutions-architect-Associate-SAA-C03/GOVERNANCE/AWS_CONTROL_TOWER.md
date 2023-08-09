#### What is AWS Control Tower?

___

* `Governance`: Esy to set up and govern an AWS multi-account environment
* `Orchestration`: Automates account creation and security controls via other AWS services
* `Extension`: Extends AWS Organizations to prevent governance drift, and leverage different guardrails.
* `New AWS Accounts`: Users can provision new AWS accounts quickly, using central admin established compliance
  policies
* `Simple Terms`: Quickest way to create and manage a secure, compliant, multi-account environment based on best
  practices

#### Features and Terms to Know

___

1. `Landing Zone`: Well-architected, multi-account environment based on compliance and security best practices
2. `Guardrails`: High-level rules providing continuous governance for the AWS environment
3. `Account Factory`: Configurable account template for standardizing pre-approved configs of new accounts
4. `CloudFormation StackSet`: Automated deployments of templates deploying repeated resources for governance
5. `Shared accounts`: Three accounts used by Control Tower created during landing zone creation

#### Exam Tips

___

* `Governance`: Easy way to set up and maintain governance in multi-AWS account environments
* `Accounts`: Automate account deployment with preconfigured compliance rules
* `Shared Accounts`: Management account, logs archive account and audit account
* `Preventive Guardrail`: Leverages service control policies to prevent non compliant actions
* `Detective Guardrail`: Leverages AWS Config rules to detect and alert on violating actions or changes
* `Keywords and Scenarios`: Automated multi-account governance, guardrails, account orchestration and governed user
  account provisioning