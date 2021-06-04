
Feature: Kafka Test Suite 24
  Using Kafka Rest Proxy - Consuming Topic

  Background: Init
    Given url "http://10.0.0.60:8082"

  Scenario: Creating Consumer
    Given path "/consumers/my-consumer-group"
    And request
      """
      {
         "name" : "Mounika1_consumer",
         "format" : "json",
         "auto.offset.reset" : "earliest",
         "auto.commit.enable" : "false"
      }
      """
    And header Content-Type = "application/vnd.kafka.json.v2+json"
    When method post
    Then status 200
    * print response
    * match response.instance_id == "Mounika1_consumer"
    * def consumer_url = response.base_uri

    * print consumer_url


  Scenario: Subscribing to topic
    Given path "/consumers/my-consumer-group/instances/Mounika1_consumer/subscription"
    And request
        """
        {
          "topics" : [ "Mounika1_topic" ]
        }
        """
    And header Content-Type = "application/vnd.kafka.v2+json"
    When method post
    Then status 204



  Scenario: Getting Subscription
    Given path "/consumers/my-consumer-group/instances/Mounika1_consumer/subscription"
    And header Accept = "application/vnd.kafka.v2+json"
    When method get
    Then status 200
    * print response
    * assert response.topics[0] == "Mounika1_topic"


  Scenario: Getting Subscription records
    Given path "/consumers/my-consumer-group/instances/Mounika1_consumer/records"
    And param timeout = 3000
    And param max_bytes = 300000
    And header Accept = "application/vnd.kafka.json.v2+json"
    When method get
    Then status 200
    * print response


  Scenario: Getting assigned Assignments
    Given path "/consumers/my-consumer-group/instances/Mounika1_consumer/assignments"
    And header Accept = "application/vnd.kafka.v2+json"
    When method get
    Then status 200
    * print response
    * assert response.partitions[0].topic == "Mounika1_topic"



  Scenario: Deleting assigned subscription
    Given path "/consumers/my-consumer-group/instances/Mounika1_consumer/subscription"
    And header Accept = "application/vnd.kafka.v2+json"
    When method delete
    Then status 204


  Scenario: Deleting consumer
    Given path "/consumers/my-consumer-group/instances/Mounika1_consumer"
    And header Accept = "application/vnd.kafka.v2+json"
    When method delete
    Then status 204

  Scenario: Deleting consumer - Negative Test Case
    Given path "/consumers/my-consumer-group/instances/Mounika1_consumer"
    And header Accept = "application/vnd.kafka.v2+json"
    When method delete
    Then status 404
    * assert response.message == "Consumer instance not found."



