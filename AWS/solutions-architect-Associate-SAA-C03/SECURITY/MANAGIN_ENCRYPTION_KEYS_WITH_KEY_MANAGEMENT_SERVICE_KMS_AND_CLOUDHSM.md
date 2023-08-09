#### What is KMS?

___

* AWS Key Management Service (AWS KMS) is a managed service that makes it easy for you to create and control the
  encryption keys used to encrypt your data.

#### Integration

___

* `AWS KMS is integrated with other AWS services` such as `EBS,S3, and RDS` - as well as other services to make it
  simple to encrypt your data with encryption keys you manage.

#### Controlling Your Keys

___

* AWS KMS provides you with `cenralized control` over the lifecycle and permissions of your keys. You can create new
  keys whenever you wish, and you can control who can manage keys separately from who can use them.

#### CMK

___

* A customer master key (CMK) is a logical representation of a master key. The CMK includes metadata, such as the key
  ID, creation date, description, and key state.
* `The CMK also contains the key material used to encrypt and decrypt data`.

#### HSM

___

* A hardware security module (HSM) is a physical computing device that safeguards and manages digital keys and performs
  encryption and decryption functions.
* `An HSM contains one or more secure cryptoprocessor chips`.

#### Exam Tips: 3 Ways to Generate a CMK

___

1. AWS created the CMK for you. The key material for a CMK is `generated withing HSMs` managed by AWS KMS.
2. Import key material from your `own key management infrastructure` and associate it with a CMK.
3. Have the key material generated and used in an `AWS CloudHSM cluster` as part of the custom key store feature in AWS
   KMS.

#### Key Rotation

___

* You can choose to have AWS KMS automatically rotate CMKs every year, provided that those keys were generated within
  AWS KMS HSMs.
* Automatically rotation is not supported for imported keys, asymmetric keys, or keys generated in an AWS CloudHSM
  cluster using the AWS KMS custom key store feature.

#### Policies

___

* The primary way to manage access to your AWS KMS CMKs is with policies. Policies are documents that describe who has
  access to what.
* Policies attached to an IAM identity called identity-based policies (or IAM policies), and policies attached to other
  kinds of resources are called resource-based policies.

#### Key Policies

___

* In AWS KMS, you must attach resource-based policies to your customer master keys (CMKs). There are called key
  policies.
* `All KMS CMKs have a key policy`.

#### Exam Tips: 3 Ways to Control Permissions

___

1. `Use the key policy`: Controlling access this way means the full scope of access to the CMK is defined in a single
   document (the key policy).
2. `Use IAM policies in combination with the key policy`: Controlling access this way enables you to manage all the
   permissions for your IAM identities in IAM.
3. `Use grants in combination with the key policy`: Controlling access this way enables you to allow access to the CMK
   in the key policy, as well as allow users to delegate their access to others.

#### CloudHSM

___

* AWS CloudHSM is a cloud-based HSM that enables you to easily generate and use your own encryption keys on teh AWS
  Cloud.
* It is a physical device, entirely dedicated to you, that can be deployed in a highly available fashion.

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

#### Exam Tips: AWS KMS

* `AWS Key Management Service (AWS SMS)` is a managed service that makes it easy for you to create and control the
  encryption keys used to encrypt your data.
* `You start using the service by requesting the creation of a CMK`. You control the lifecycle of the CMK as well as who
  can use or manage it.