#### CloudFormation Overview

___

1. `Step 1 - Write Code`: CloudFormation is declarative programming language. It supports either JSON or YAML
   formatting.
2. `Step 2 - Deploy Your Template`: When you upload your template, CloudFormation will go through the process of making
   the needed AWS API calls on your behalf.

#### Exam Tip: Immutable Architecture

___

* CloudFormation is perfect for `creating immutable architecture`.
* When you create resources using CloudFormation, `you can easily pick that template up and run it anywhere you want`.
* `This consistency is something you will want to keep in mind during the exam`.

#### Exam Tips: CloudFormation

___

* `Basics`: You will need to know the layout of a CloudFormation template and what the sections do.
* `Troubleshooting`: If it finds an error, CloudFormation rolls back to the last known good state.
* `Immutable`: CloudFormation can easily create and destroy your entire architecture.
* `Cross-Region`: Hard-coded values and resources IDs can be the reason templates fail to create.
* `It's Just API calls`: CloudFormation makes the same API calls you make manually.