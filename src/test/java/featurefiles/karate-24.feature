Feature: Test Suite 24
  using scenario and feature level test fixture (karate hooks)

  Background: init
    * print "from background block"

    #* configure afterScenario =
   # """
    #function (){
   # karate.log("from after scenario")
    #}
   # """
   # * configure afterFeature =
   # """
   # function (){ 
   # karate.log("from after feature")
   # }
   # """


  Scenario: Karate hooks Test Case
    * print "from scenario block"
