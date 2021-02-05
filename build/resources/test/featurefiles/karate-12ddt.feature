Feature:karate tst suite 12
  data driven testing

  @ddt
  Scenario Outline:ddt testcase1
    Given url "https://www.w3schools.com/xml/tempconvert.asmx/CelsiusToFahrenheit"
    And header Content-Type = "application/x-www-form-urlencoded"
    And request "Celsius = <Temp>"
    When method post
    Then status 200
    * print responseHeaders
    * print responseType
    * print response
    * match responseType == "xml"
    * assert responseTime <= 1000
    * match response //string == <Result>

    Examples:
      | Temp | Result |
      | 37   |  98.6  |
      | 40   | 104    |


  @ddt
  Scenario Outline:ddt testcase2
    Given url "https://www.w3schools.com/xml/tempconvert.asmx/CelsiusToFahrenheit"
    And header Content-Type = "application/x-www-form-urlencoded"
    And request "Celsius = <Temp>"
    When method POST
    Then status 200
    * print responseHeaders
    * print responseType
    * print response
    * match responseType == "xml"
    * assert responseTime <= 1000
    * match response //string == <Result>

    Examples:
      | read ("classpath:data.csv")|