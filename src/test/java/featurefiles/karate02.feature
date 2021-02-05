Feature: Karate Test Suite 2
  Validating json content
  
  Scenario: Json Test Case 1
   Given def json = { "id" : "101", "tool": { "name":"Karate", "version":"0.9.6"}}
    * print json
    * print json.id
    * print json.tool.version

  Scenario: Json Test Case 2
    Given def json =
    """
    {
        "id" : "101",
        "tool": { "name":"Karate", "version":"0.9.6"}
     }
     """
    * print json
    * print json.id
    * print json.tool.version

  Scenario: Json Test Case 3
    Given def json = { "id" : "101", "tool": { "name":"Karate", "version":"0.9.6"}}

    * assert json.id == "101"
    * assert json.tool.version == "0.9.6"

  Scenario: Json Test Case 4
    Given def json = { "id" : "101", "tool": { "name":"Karate", "version":"0.9.6"}}

    * assert json.id == "101"
    * match json.tool == { "name":"Karate", "version":"0.9.6"}

  Scenario: Json Test Case 5
    Given def json = { "id" : "101", "tool": { "name":"Karate", "version":"0.9.6"}}

    * assert json.id == "101"
    * match json.tool == { "name":"Karat0", "version":"0.9.6"}