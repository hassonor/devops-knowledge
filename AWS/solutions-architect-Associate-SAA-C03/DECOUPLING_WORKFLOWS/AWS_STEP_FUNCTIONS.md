#### AWS Step Functions Overview

___

* **Orchestration**: `Serverless orchestration service` combining different AWS services for business applications.
* **State Machine**: A particular `workflow` with different `event-driven steps`.
* **Graphical Console**: Comes with a `graphical console` for easier application workflow views and flows.
* **Task**: `Specific states` withing a workflow (state machine) representing a `single unit of work`.
* **Components**: Main components are `state machines` and `tasks`.
* **States**: `Every single step` within a workflow is considered a `state`.

#### AWS Step Functions: Standard vs Express

___

1. `Standard`:
    * Have an `exactly-once` execution
    * Can run for up to `one year`
    * Useful for `long-running workflows` that need to have an `auditable history`
    * Rates up to `2,000` executions per second
    * Pricing based `per state transition`
2. `Express`:
    * `At-least-once` workflow execution
    * Can run for `up to five minutes`
    * Useful for `high-event-rate workloads`
    * Example use is `IoT data streaming and ingestion`
    * Pricing based on `number of executions`, `durations`, and `memory consumed`.

#### States and State Machines

___

* **Flexible**: Leverage states to either `make decisions` based on input, `perform certain actions`, or `pass output`.
* **Language**: States and workflows are defined in `Amazon States Language`.
* **States**: States are `elements within your state machines`. They are referred to by a name.
* **Example**: Think about an online pickup order: `Each step` in that workflow is `considered a state`.

#### Different States:

* `Pass`: Passes any input directly to its output - no work done
* `Task`: Single unit of work performed (e.g., Lambda, Batch, and SNS).
* `Choice`: Adds branching logic to state machines
* `Wait`: Creates a specified time delay withing the state machine
* `Succeed`: Stops execution successfully
* `Fail`: Stops executions and marks them as failures
* `Parallel`: Runs parallel branches of executions withing state machines
* `Map`: Runs a set of steps based on elements of an input array

#### Exam Tips: AWS Step Functions

___

* **What is AWS Step Function?**: `Serverless orchestration service` mean for `event-driver task executions` using AWS
  services. Come with a graphical interface.
* **Execution Types**: `Standard workflows` are good for long-running, auditable executions. `Express workflows` are
  good for high-event-rate executions.
* **Amazon State Language**: All state machines are written in the `Amazon States Language` format.
* **States**: States are `elements withing your state machines`. These are things and actions that happen with
  workflows.
* **Many Integrations**: So many AWS service integrations available! Common one are `AWS Lambda`, `API Gateway`,
  and `Amazon EventBridge`.
* **State Types**: There are currently eight different state
  types: `Pass`, `Task`, `Choice`, `Wait`, `Succeed`, `Fail`, `Parallel` and `Map`.