Feature: Test Suite 23
  Reading global variables from karate config

  Scenario: Karate Config Test Case
    Given url baseUrl
    And path listUsers
    When method get
    Then status 200
    * print response