#### What is Amazon Managed Grafana?

___
Fully managed AWS service allowing secure data visualization for instantly **querying, correlating, and visualizing your
operational metrics, logs, and traces** from different sources.

#### Amazon Managed Grafana Overview

___

* **Grafana Made Easy**: Easily deploy, operate, and scale `Grafana` within your AWS accounts.
* **Secure**: Built-in security features help you meet corporate **governance and compliance requirements**.
* **Logical Separation**: `Workspace`  (logical Grafana servers) allow for separation of data visualizations and
  querying.
* **Pricing**:  Pricing is based per active user in a workspace.
* **AWS Managed**: AWS handles scaling, setup, and maintenance of all workspaces. **You only worry about tasks**.
* **Data Sources**: Integrate it with several sources
  including: `Amazon CloudWatch`, `Amazon Managed Service for Prometheus`, `Amazon OpenSearch Service`,
  and `Amazon Timestream`.

#### Use Cases: Amazon Managed Grafana

___

* **Container Metric Visualizations**: Connect to data sources like `Prometheus` for visualizing `EKS`, `ECS` or **your
  own Kubernetes cluster** metrics.
* **Internet of Things (IoT)**: **Vast data plugins** make the service a perfect fit for **monitoring IoT and edge
  device data**.
* **Troubleshooting**: Centralizing dashboards allows for **more efficient** operational issue **troubleshooting**.

#### What is Amazon Managed Service for Prometheus?

___
**Serverless, Prometheus-compatible service** used for securely monitoring container metrics at scale.

#### Amazon Managed Service for Prometheus Overview

___

1. **Open-Source Prometheus**: Leverage the open-source **Prometheus data model** with **AWS-managed scaling and
   availability**.
2. **Automatic Scaling**: Let AWS manage **automatic scaling** based on **ingestion**, **storage** and **querying** of
   metrics.
3. **Designed for High Availability**: AWS **replicated data across three Availability Zones** (AZs) in the same Region.
   Designed for **availability**.
4. **Choose Your Kubernetes**: Works with clusters running on **Amazon EKS** or **self-managed** Kubernetes clusters.
5. **PromQL**: Leverage the open-source **PromQL** query language for exploring and extracting data.
6. **Data Retention**: Data is stored in workspaces for **150 days** (automatically deleted afterward).

#### Exam Tips:

___

* **What is Amazon Managed Grafana?**: Fully managed service for data visualization. Allows instant **querying**,
  **correlating**, and **visualizing** of **metrics, logs and traces**.
* **What is Amazon Managed Service for Prometheus?**: `Serveless`, `Prometheus-compatible service` used for securely
  monitoring container metrics at scale.
* **Security and Scaling**: Both services let AWS handle the **high availability** and **automatic scaling** of
  infrastructure. Leverage **VPC endpoints** for **secure VPC access**.
* **Grafana Data Sources**: Several built-in data sources,
  including `Amazon CloudWatch`, `Amazon Managed Service for Prometheus` and `AWS X-Ray`.
* **Amazon Managed Service for Prometheus Uses**:  Leverage the service for `Amazon EKS clusters` or
  even `self-managed Kubernetes clusters`.
* **Amazon Managed Grafana Uses**: `Container meteric visulizations` (EKS, ECS, or self-hosted Kubernetes
  clusters), `IoT edge device data` and `operational teams`.
