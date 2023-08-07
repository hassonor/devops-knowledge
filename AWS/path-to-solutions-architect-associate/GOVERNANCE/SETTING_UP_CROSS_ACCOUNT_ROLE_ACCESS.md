#### Cross-Account Role Access

___
As the number of AWS accounts you manager `increases`, you will need to set up cross-account access. Duplicating IAM
accounts creates a security `vulnerability`. Cross-account role access gives you the ability to set up temporary access
you can easily `control`.

#### Exam Tip: Roles Are Your Friend

___

* Anytime credentials are mentioned,`scan the answers looking for roles`.
* In the exam, It is `preffered to creatre cross-account roles` rather than additional IAM users.

#### Exam Tips: Cross-Account Roles

___

* `Everywhere`: Use. Roles. Everywhere. This is the single most important piece of advice for the exam.
* `Auditing`: Any temporary employees get role access, and that's it. No permanent credentials.
* `Theory`: You will need to know you can set this up, but you don't need to know the specifics.
* `Temporary`: Remember: Roles assumption is temporary. You can't permanently assume a role.