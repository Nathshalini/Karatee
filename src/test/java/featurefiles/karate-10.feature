Feature: karate test suite 9
  validating json output of rest api with get method

  @rest
  Scenario: rest api testcase1
    Given url "http://dummy.restapiexample.com/api/v1/employees"
    When method get
    Then status 200
    * match responseType == "json"
    * match response.status == "success"
    * match response.data[0].employee_name == "Tiger Nixon"
    * match response.status == "#string"

  @rest
  Scenario: rest api testcase2
    Given url "http://dummy.restapiexample.com"
    And path "/api/v1/employees"
    When method get
    Then status 200
    * match responseType == "json"
    * match response.status == "success"
    * match response.data[0].employee_name == "Tiger Nixon"
    * match response.status == "#string"