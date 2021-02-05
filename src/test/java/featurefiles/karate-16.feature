Feature:  Karate Test Suite 16
  Writing Response to an External File

  Scenario: Writing to a file

    * def temp = Java.type('misc.utils')
    Given url "https://reqres.in/api/users?page=2"
    When method get
    Then status 200

    #to hold complete response in one variable
    #* def res = get response

    #to hold specfic response in one variable
    * def res = get response $.data.[0].email

    #* def res = get response
    * print res
    * temp.writeToFile("result.json", res);

    Scenario: Reading Result File
      * def data = read("classpath:result.json")
      * print data
