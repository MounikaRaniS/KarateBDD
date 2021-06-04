Feature: Kafka Test Suite 25
  Using scenario and feature level test fixture (Karate Hooks)

  Background: Init
    * print "From background block"
#    * configure afterScenario =
#     """
#      function (){
#      karate.log("from after scenario")
#      }
#     """
    * configure afterFeature =
    """
    function (){
    karate.log("from after feature")
    }
    """

  Scenario: Karate Hooks TC 1
    * print "From scenario block"