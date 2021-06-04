Feature: Karate Test Suite 11
  This test suite for custom validations


  Scenario: Rest TestCase 1
  This is for custom validation using logical and validaton

    * def a = 12
    * def b = 23
    * assert a == 12 && b  == 23


  Scenario: Rest TestCase 2
  This is for custom validation using logical  or validaton

    * def a = 12
    * def b = 23
    * assert a == 12 || b  == 2

  Scenario: Rest TestCase 3
  This is for custom validation using logical  not validaton

    * def a = 12
    * def b = 23
    * assert a != 1

  Scenario: Rest TestCase 4
  This is for custom validation using matchers(data types)

    * def a = 12
    * def b = "test data"
    * def c = true

    * match a == "#number"
    * match b == "#string"
    * match c == "#boolean"
  Scenario: Rest TestCase 5
  This is for custom validation using matchers(Regular expression)

    * def a = "12"
    * def b = "1002.23"
    * def c = "test data from file"
    * def d1 = "KARATE"
    * def d2 = "karate"
    * def d3 = "Karate"
    * def d4 = "Karate bdd"
    * def d5 = "cucumber bdd"
    * match a == "#regex \\d+"
    * match b == "#regex \\d+\\.\\d+"
    * match d1 == "#regex [A-Z]+"
    * match d2 == "#regex [a-z]+"
    * match d3 == "#regex [A-Z][a-z]+"
    * match d4 == "#regex (Karate|cucumber) bdd"
    * match c == "#regex (\\w+\\s?)+"
    * match c == "#regex (^test\.*)"
    * match c == "#regex (\.*file$)"
