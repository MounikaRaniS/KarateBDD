Feature: Karate Test Suite 1
  This is the first test suite

  Scenario: Karate TestCase 1
    This is the first test case

    Given def a = 10
    And def b = 20
    When def c = a + b
    Then assert c == 30

  Scenario: Karate TestCase 2
    This is the second test case

    * def a = 10
    * def b = 20
    * def c = a + b
    * assert c == 30

  Scenario: Karate TestCase 3
    This is the third test case

    * def a = 10
    * def b = 20
    * def c = a + b
    * assert c == 30
    * print "c = ",c
    * karate.log("the value of c = "+c)