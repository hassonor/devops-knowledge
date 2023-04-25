#### What is IAM?

**IAM** allows you to manage users and their level of access to the **AWS** console.

* Create users and grant permissions to those users.
* Create groups and roles
* Control access to AWS resources.

#### What is the Root Account?

The **root account** is the email address you used to sign up for AWS. The root account has
**full administrative access** to AWS. FOr this reason, it is important to secure this account.

#### 4 Steps to secure Your AWS Root Account

1. Enable MFA on the root account.
2. Create an admin group for your administrates, and assign the appropriate permissions to this group.
3. Create user accounts for your administrators.
4. Add your users to the admin group.

#### The Building Blocks

* **Users**: A physical person
* **Groups**: Functions, such as administrator, developer, etc. Contains users.
* **Roles**: Internal usage within AWS

#### Best Practices

* It's BEST practice for users **inherit permissions** from groups.
* ALWAYS work on the principle that one user **equals** one physical person. Never share user accounts across multiple
  people.
* **The Principle of The Least Privilege**: Only assign a user the **minimum** amount of privileges they need to do
  their job.

#### Exam Tips: (Remember to Exam)

* **IAM is Universal**: It does not apply to regions at this time.
* **The Root Account**: The account created when you first set up your AWS account and which has complete admin access.
  Secure it as soon as possible and **do not** use it to log inn day to day.
* **New Users**: No Permissions when first created.
* **Access key ID and secret access keys are not same as usernames and passwords.**
* **You only get to view these once.** If you lose them, you have to regenerate them. So, save them in a secure
  location.
* **Always set up passwords rotations.** You can create and customize your own password rotation policies.
* **IAM Federation**: You can combine your existing user account with AWS. For example when you log on to your PC (
  usually using Microsoft Active Directory), you can use the same credentials to log in to AWS if you set up federation.
* **Identity Federation**: Uses the SAML standard, which is Active Directory.