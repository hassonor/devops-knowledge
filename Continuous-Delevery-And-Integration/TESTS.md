## Tests

### Types of Testing

___

#### Unit testing

Performed at build time on a single unit of code and/or artifact without use of
external dependencies or deployment. <br>Example tools: JUnit, XUnit and Rspec.

#### Integration testing

Performed as you bring together pieces of your application
and as it needs to use external dependencies. <br>Example tools: Abao/RAML and Serverspec

#### End-to-end (E2E) testing

Performed to exercise the full flow of your application in the same way an end user would.
<br>Example tools: Selenium, Protractor and Cypress.

#### Security testing

Performed to look for flaws in your code and runtime to prevent compromises and leaking of data in production.
<br> Example tools: FindBugs, Fortify and Gauntlt.

### Terms of testing

___

#### Shift left

Move testing as early as possible in the development process, ideally to the dev DESKTOP

#### Test fixture

A set of objects used to run a test in a well-known environment

#### System under test (SUT)

The application and system of which you are running your tests

#### Cycle time

The time from when an item (feature or bug fix) is worked on until it delivered into production.

#### Lead time

The time taken from when an item (feature or bug fix) is requested until it is delivered into production.

#### Mock

Code designed to stand in for a piece of code that contains external dependencies to enable unit tests

### Testing Philosophy

___

#### Test-driven development (TDD)

The practice of writing a failing test first, and then writing the code that causes the test to pass

#### Behavior-driven development (BDD)

The practice of writing tests in a simple end-user-behavior-centric language

#### Acceptance test-driven development

The practice of agreeing on acceptance tests before development to establish what is to be delivered

### The Big 3 Testing Metrics

___

* Cycle time - time from the start of work to delivery
* Velocity - value delivered per unit time
* Customer satisfaction - how well a product/service met the customer's needs. NPS scores and bug reports work well
  here.