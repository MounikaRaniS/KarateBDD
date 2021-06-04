Feature: Karate Test Suite 13
  This test suite for rest api end to end validation

  @rest
  Scenario: end to end rest API TestCase 1
    This is for rest test case1 FOR end to end rest API(API chaining) validation
    #----------------- creating resource
    Given url "https://jsonplaceholder.typicode.com/posts"
    And header Content-type = "application/json; charset=UTF-8"
    And request
    """
    {
      title: 'karate',
      body: 'bdd',
      userId: u690337,
    }
    """
    When method post
    Then status 201
    #* def id = response.id
    * def id = 10
    * print id


      #----------------- fetching resource
    Given url "https://jsonplaceholder.typicode.com/posts/" + id
    When method get
    Then status 200
    #* match response.title =="karate"




 #----------------- updating resource
    Given url "https://jsonplaceholder.typicode.com/posts/" + id
    And header Content-type = "application/json; charset=UTF-8"
    And request "{ id: " + id + ", title: 'foo1', body: 'bar1', userId: 1 }"
    When method put
    Then status 200

    #----------------- deleting resource
    Given url "https://jsonplaceholder.typicode.com/posts/" + id
    When method delete
    Then status 200