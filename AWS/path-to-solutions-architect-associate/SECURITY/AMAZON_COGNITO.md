#### What is Cognito?

___
Cognito provides `authentication, authorization, and user management` for your web and mobile apps in a single service
without the need for custom code. Your users can sign in directly with a username and password they create or through a
third party (e.g. Facebook, Amazon, Google or Apple).

#### Cognito provides the following features:

___

* Sign-up and sign-in options for your apps
* Access for guest users
* Acts as an identity broker between your application and web ID providers, so you don't need to write any custom code.
* Synchronizes user data across multiple devices

#### Use Cases

___

* `Authentication`: Users can sign in using a user pool or a third-party identity provider, such as Facebook.
* `Access Server-Side Resources`: A signed-in user is given a token that allows them to access to resources that you
  specify.
* `Third-Party Authentication`: Users can authenticate using identity pools that require an identity provider (IdP)
  token.
* `Access AWS AppSync Resources`: Users can be given access to AppSync resources with tokens received from a user or
  identity pool in Cognito.

#### Users Pools and Identity Pools

___

* The two main components of Cognito are `users pools and identity pools`:
    * `User pools` are directories of users that provide sign-up and sign-in options for your application users.
    * `Identity pools` allow you to give your users access to other AWS services. You can use identity pools and user
      pools either separately or together.

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