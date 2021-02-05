Feature: Karate Test Suite 1
  Using logical operators
  
  Scenario: Karate Test Case 1
    Given def a = 10
    And def b = 20
    * assert a==19 && b==20
    * print "after assertion"


