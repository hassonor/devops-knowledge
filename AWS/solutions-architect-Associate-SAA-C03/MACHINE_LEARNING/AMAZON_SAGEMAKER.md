#### Amazon SageMaker

___

* `Ground Truth`: Set up and manage labeling jobs for training datasets using active learning and human labeling.
* `Notebook`: Access a managed Jupyter Notebook environment.
* `Training`: Train and tune models.
* `Inference`: Package and deploy you machine learning models at scale.

#### Two Deployment Types:

___

* `Offline Usage`
* `Online Usage`

#### SageMaker Stages

___

1. `Create a Model`: This is the place that will provide predictions for your endpoint.
2. `Create an Endpoint Configuration`:
    * This is where you specify the model to use, interface instance type, instance count, variant name and weight.
    * This can sometimes be called a production variant.
3. `Create an Endpoint`: This is where the model is published, and you can invoke the model using the `InvokeEndpoint()`
   method.

#### Amazon SageMaker Neo:

___

* Customize your machine learning models for specific CPU hardware, such as `ARM,Intel and NVIDIA` processors.
* It includes a compiler to convert the machine learning model to an environment that is optimized to execute the model
  on the target architecture.

#### Elastic Inference (EI)

___

* EI speeds up throughput and decreases latency of real-time inferences deployed on SageMaker hosted services using only
  CPU-based instances. It is much more cost-effective that a full GPU instance.
* It must be configured when you create deployable model. EI is not available for all algorithms yet.

#### Exam Tips: Sagemaker

___

* `Ground Truth`: Set up and manage labeling jobs for training datasets using active learning and human labeling.
* `Notebook`: Access a managed Jupyter Notebook environment.
* `Training`: Train and tune models
* `Inference`: Package and deploy your machine learning models at scale.

#### SageMaker Exam tips

___

1. `Create a Model`: This is the place that will provide predictions for your endpoint.
2. `Create an Endpoint Configuration`:
    * This is where you specify the model to use, interface instance type, instance count, variant name and weight.
    * This can sometimes be called a production variant.
3. `Create an Endpoint`: This is where the model is published, and you can invoke the model using the `InvokeEndpoint()`
   method.