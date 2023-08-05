#### What is Secrets Manager?

___

* `Secrets Manager` is a service that securely stores, encrypts and rotates your database credentials and other secrets
    * Encryption in transit and at rest using KMS
    * Automatically rotates credentials
    * Apply fine-grained access control using IAM policies
    * Costs money but is highly scalable

#### What else can Secrets Manager do?

___

* Your application makes an API call to Secrets Manager to retrieve the secret programmatically.
* Reduces the risk of credentials being compromised

#### What can be stored?

___

* RDS credentials
* Credentials for non-RDS databases
* Any other type of secret, provided you can store it as a key-value pair (SSH keys, API keys)

#### Automatic Rotation

___

* `IMPORTANT`: If you enable rotation, Secrets Manager immediately rotates the secret once to test the configuration.
* `Ensure all of your application that use these credentials` are updated to retrieve the credentials from this secret
  using Secret Manager.

#### Disable Rotation:

___

* If your applications are still using embedded
  credentials, `do not enable rotation because the embedded credentials will no longer work and this will break your application`.

#### Enable Rotation:

___

* This is the recommended setting if your application are not already using embedded credentials (
  i.e., `they are not going to try to connect to the database using the old credentials`).

#### Exam Tips: Secrets Manager

___

* `Secrets Manager can be used to securely store your application secrets`: database credentials, API keys, SSH keys,
  passwords, etc.
* `Applications use` the Secrets Manager API.
* `Rotating credentials is super easy` - but be careful.
* `When enabled`, Secrets Manager will rotate credentials immediately.
* `Make sure all your application instances are configured to` use Secrets Manager `before` enabling credential
  rotation.