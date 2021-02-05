Feature: Karate Test Suite 3
  Validating xml content

  Scenario: xml test case 1
    Given def xml = <info><id>101</id><tool><name>Karate</name><version>0.9.6</version></tool></info>
    * print xml
    * print xml/info/id
    * print xml.info.id
    * print xml.info.tool.name

    Scenario: : xml test case 2
      Given def xml =
      """
       <info>
        <id>101</id>
        <tool>
        <name>Karate</name>
        <version>0.9.6</version>
       </tool>
      </info>
      """
      * print xml
      * print xml/info/id
      * print xml.info.id
      * print xml.info.tool.name

  Scenario: xml test case 3
    Given def xml = <info><id>101</id><tool><name>Karate</name><version>0.9.6</version></tool></info>
    * print xml
    * match xml.info.id == 101
    * match xml.info.tool.name == "Karate"

  Scenario: xml test case 4
    Given def xml = <info><id>101</id><tool><name>Karate</name><version>0.9.6</version></tool></info>
    * match xml contains "Karate"


  Scenario: xml test case 5
    Given def xml = <info><id>101</id><tool><name>Karate</name><version>0.9.6</version></tool></info>
    * match xml contains "<name>Karate</name>"

    Scenario: xml test case 6
      Given def xml =
      """
      <info>
        <id>101</id>
        <tool>
          <name>Karate</name>
          <version>0.9.6</version>
        </tool>
        <tool>
          <name>IntelliJ</name>
          <version>2020.2</version>
        </tool>
      </info>
      """
      * assert ( xml/info/tool[1]/name contains "Karate" && xml/info/tool[2]/name contains "IntelliJ" )
