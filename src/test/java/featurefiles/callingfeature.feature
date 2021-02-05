Feature: Calling feature suite
  calling feature


  @Rest
  Scenario: calling feature testcase1
  * def result = call read("calledfeature.feature")
    * print result
    * assert result.response.string._ =="104"

