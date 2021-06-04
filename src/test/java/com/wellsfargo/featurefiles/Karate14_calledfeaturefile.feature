Feature: Karate Test Suite 14
  Called feature file

  @called1
  Scenario: Called test case 1
  Called scenario module
    #---- Creating resource

    Given url "https://jsonplaceholder.typicode.com/posts"
    And header Content-type = "application/json; charset=UTF-8"
    And request
    """
      {
      title: 'karate',
      body: 'bdd',
      userId: 1888,
      }

    """
    When method post
    Then status 201


  @called2
  Scenario: Called test case 2
  Called scenario module
    #---- Creating resource

    Given url "https://jsonplaceholder.typicode.com/posts/1"
    When method get
    Then status 200






