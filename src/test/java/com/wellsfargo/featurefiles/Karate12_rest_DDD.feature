Feature: Karate Test Suite 12
  This test suite for rest api with Data driven testing.

  @rest
  Scenario Outline: Rest TestCase 1
    This is for rest test case1 FOR Data driven validation
    Given url "https://www.w3schools.com/xml/tempconvert.asmx/CelsiusToFahrenheit"
    And header Content-Type = "application/x-www-form-urlencoded"
    And request "Celsius=<Celsius>"
    When method post
    Then status 200
    * match response //string == <result>

    Examples:
      |Celsius|result|
      |40     |104   |
      |37     |98.6  |
      |abc    |"Error"|

  @rest
  Scenario Outline: Rest TestCase 2
  This is for rest test case2 FOR Data driven validation using external fie
    Given url "https://www.w3schools.com/xml/tempconvert.asmx/CelsiusToFahrenheit"
    And header Content-Type = "application/x-www-form-urlencoded"
    And request "Celsius=<Celsius>"
    When method post
    Then status 200
    * match response //string == "<result>"

    Examples:
    | read("dd01.csv") |

