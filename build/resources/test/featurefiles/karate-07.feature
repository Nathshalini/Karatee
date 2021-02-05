Feature: Karate Test Suite 7
  Validating datatypes of variable
  
  Scenario: Datatype validation TC1
    * def a = 10
    * def b = "karate"
    * def c = true
    * match a == "#number"
    * match b == "#string"
    * match c == "#boolean"

