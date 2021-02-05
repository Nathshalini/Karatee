Feature: Test Suite 13

  Scenario: Javascript function test case 1
    * def fn1 = function() {return 123;}
    * def fn2 =
    """
    function(id){
    karate.log(id);
    }
    """
    * print fn1()
    * fn2(33)