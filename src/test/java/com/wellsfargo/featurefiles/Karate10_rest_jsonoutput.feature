Feature: Karate Test Suite 10
  This test suite for rest api with json output

  @rest
  Scenario: Rest TestCase 1
  This is for rest test case1
    Given url "https://reqres.in/api/users?page=2"
    When method get
    Then status 200
    * print response
    * print responseHeaders
    * print responseTime
    * assert responseTime <= 1000
    * match response.total == 12
    * match response.data[0].last_name == "Lawson"
    * match response.data[1].last_name == "Ferguson"
    * match responseType == "json"

  @rest
  Scenario: Rest TestCase 2
  This is for rest test case2
    Given url "https://reqres.in"
    And path "/api/users"
    And param page = 2
    When method get
    Then status 200
    * print response
    * print responseHeaders
    * print responseTime
    * assert responseTime <= 1000
    * match response.total == 12
    * match response.data[0].last_name == "Lawson"
    * match response.data[1].last_name == "Ferguson"
    * match responseType == "json"