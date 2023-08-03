#### Amazon ECR

___

* `Registry`: `AWS-managed container image registry` that offers secure, scalable, and reliable infrastructure.
* `Private`: `Private container image repositories` with resource-based `permissions via IAM`.
* `Supported Formates`: Supports `Open Container Initiative (OCI) images, Docker images`, and `OCI artifacts`.

#### Components to Know

___

* `Registry`: A `private registry` provided to each AWS account; `create one or more` for image storage.
* `Authorization Token`: `Authentication token` required for pushing and pulling images to and from registries.
* `Repository`: Contains all of your `Docker images`, `OCI images`, and `OCI artifacts`.
* `Repository Policy`: `Control all access` to repos and images.
* `Image`: `Container images` that get pushed to and pulled from your repository.
* `Amazon ECR Public` is a similar service for public image repositories.

#### Features to Know: Lifecycle Policies

___

1. Helps `management of images` in your repositories
2. Defines `rules for cleaning up` unused images
3. Ability to `test your rules` before applying them

#### Features to Know: Image Scanning

___

1. Help `identify software vulnerabilities` in your container images.
2. Repositories can be set to scan `on push`.
3. `Retrieve results` of scans for each image.

#### Feature to Know: Sharing

___

1. `Cross-Region` support
2. `Cross-account` support
3. Configured `per repository` and `per region`

#### Features to Know: Cache Rules

___

1. Pull through cache rules allow for `caching public repost privately`.
2. Amazon ECR `periodically reaches out` to check current caching status.

#### Features to Know: Tag Mutability

___

1. `Prevents` image tags from `being overwriteen`
2. Configured `per repository`

#### Integrations

___

1. `Bring Your Own`: You are able to leverage ECR images `within your own container infrastructure`.
2. `Amazon ECS`: Use container images in `ECS container definitions`.
3. `Amazon EKS`: Pull images for your `EKS clusters`.
4. `Amazon Linux`: Amazon Linux containers can be used `locally` for your software development.

#### Exam Tips: Amazon ECR

___

* `Container Image Storage`: `AWS-managed` container image registry service.
* `Supported Formats`: `Docket images, OCI images`, and `OCI-compatible artifacts`.
* `Lifecycle Policies`: Rules defining when to `expire and remove unused or older images`.
* `Image Scanning`: `Scan on push` repository settings allow for `identifying software vulnerabilities` in you container
  images.
* `Tag Mutability`: Helps `prevent image tags from being overwritten`.
* `Keywords to Look For`: Questions related to a `managed container image registry, OCI repositories`,
  or `image integration with Amazon ECS and Amazon EKS`.