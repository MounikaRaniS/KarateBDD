Feature: Karate Test Suite 19
  This test suite for writing content into file

  Scenario: writing response to file TestCase 1
  This is for writing response to file test case1

    * def util = Java.type('com.wellsfargo.utils.Karate19');
    Given url "https://jsonplaceholder.typicode.com/posts/1"
    When method get
    Then status 200
    * def result = get response
    * util.writeToFile("src/test/resources/test.json", result);

  Scenario: reading response from file TestCase 2
  This is for reading response from file test case2

    * def fileResponse = read('classpath:test.json')
    * print fileResponse


