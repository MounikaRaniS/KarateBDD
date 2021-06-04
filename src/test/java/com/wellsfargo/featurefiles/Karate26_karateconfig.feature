Feature: Kafka Test Suite 26
  Reading global variables from Karate config file

  Scenario: Karate Config TC
    Given url baseUrl
    And path listUsers
    When method get
    Then status 200
    * print response