Feature: Karate Test Suite 8
  Reading pay load data from external file assignment

  @soap
  Scenario: soap 1.1 payload from external file TestCase 1
  This is for soap 1.1 complete validation test case1

    Given url "https://ecs.syr.edu/faculty/fawcett/Handouts/cse775/code/calcWebService/Calc.asmx"
    And header Content-Type = "text/xml; charset=utf-8"
    And request read("calclus.xml")
    When soap action "http://tempuri.org/Add"
    Then status 200
    * print responseHeaders
    * match responseHeaders["X-AspNet-Version"] == ["4.0.30319"]
    * match responseHeaders["X-AspNet-Version"][0] == "4.0.30319"
    * match responseType == "xml"
    * print response
    * match response contains "30"
    * match response //AddResponse/AddResult == "30"
    * print responseTime
    * assert responseTime <= 2000

