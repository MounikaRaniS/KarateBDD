Feature: Karate Test Suite 9
  This test suite for rest api with xml output

  @rest
  Scenario: Rest TestCase 1
  This is for rest test case1
    Given url "https://www.w3schools.com/xml/tempconvert.asmx/CelsiusToFahrenheit"
    And header Content-Type = "application/x-www-form-urlencoded"
    And request "Celsius=40"
    When method post
    Then status 200
    * print response
    * print responseHeaders
    * match response //string == 104
    * print responseTime
    * assert responseTime <= 1000