

Feature: Karate Test Suite 15
  Calling feature file

  @rest
  Scenario: Calling test case 1
  Calling scenario module

    * def result = call read("Karate14_calledfeaturefile.feature@called1")
    * print result
    * print result.response
    * match result.response.title == "karate"

    * def result1 = call read("Karate14_calledfeaturefile.feature@called2")
    * print result1
    * print result1.response
    * match result1.response.title contains "provident"




